#! /usr/bin/python3

import os
from utils import shell_exec, getoutput


def clear_partition(partition):
    unmount_partition(partition)
    shell_exec("openssl enc -aes-256-ctr -pass pass:\"$(dd if=/dev/urandom bs=128 count=1 2>/dev/null | base64)\" -nosalt < /dev/zero > {}".format(partition.enc_status['device']))


def encrypt_partition(partition):
    unmount_partition(partition)
    # Cannot use echo to pass the passphrase to cryptsetup because that adds a carriadge return
    shell_exec("printf \"{}\" | cryptsetup luksFormat --cipher aes-xts-plain64 --key-size 512 --hash sha512 --iter-time 5000 --use-random {}".format(partition.enc_passphrase, partition.enc_status['device']))
    return connect_block_device(partition)


def unmount_partition(partition):
    if "/dev/mapper" in partition.path:
        shell_exec("cryptsetup close {}".format(partition.path))
    shell_exec("umount --force {}".format(partition.path))


def connect_block_device(partition):
    mapped_name = os.path.basename(partition.enc_status['device'])
    shell_exec("printf \"{}\" | cryptsetup open --type luks {} {}".format(partition.enc_passphrase, partition.enc_status['device'], mapped_name))
    status = get_status(partition.path)
    return status['active']


def is_connected(partition):
    mapped_name = os.path.basename(partition.path)
    if os.path.exists(os.path.join("/dev/mapper", mapped_name)) and \
       partition.enc_passphrase != '':
        return True
    return False


def is_encrypted(partitionPath):
    if "crypt" in get_filesystem(partitionPath).lower():
        return True
    return False


def get_status(partitionPath):
    status_dict = {'offset': '', 'mode': '', 'device': '', 'cipher': '', 'keysize': '', 'filesystem': '', 'active': '', 'type': '', 'size': ''}
    mapped_name = os.path.basename(partitionPath)
    status_info = getoutput("env LANG=C cryptsetup status {}".format(mapped_name))
    for line in status_info:
        parts = line.split(':')
        if len(parts) == 2:
            status_dict[parts[0].strip()] = parts[1].strip()
        elif " active" in line:
            parts = line.split(' ')
            status_dict['active'] = parts[0]
            status_dict['filesystem'] = get_filesystem(parts[0])

    # No info has been retrieved: save minimum
    if status_dict['device'] == '':
        status_dict['device'] = partitionPath
    if status_dict['active'] == '' and is_encrypted(partitionPath):
        mapped_name = os.path.basename(partitionPath)
        status_dict['active'] = "/dev/mapper/{}".format(mapped_name)

    if status_dict['type'] != '':
        print(("Encryption: mapped drive status = {}".format(status_dict)))
    return status_dict


def get_filesystem(partitionPath):
    return getoutput("blkid -o value -s TYPE {}".format(partitionPath))
