# qubes-backup-script
# Created by MadsBen
# Date: 2018-03-03
# Github: https://github.com/MadsBen/qubes-backup-script
# This script shutdowns down all VMs (except $DestVM) and backups those in $VMsToBackup

DestVM="" # Insert name of destination VM, example "sys-net"
Passphrase="-p " # Insert absolute path to the passphrase file after the space, examle "-p  /tmp/filename.txt"
BackupPath="" # Absolute path to backup on DestVM, example: "/mount/cifs/backup"
VMsToBackup="" # List of VMs to backup, seperated by space, example: "personal work"
qvm-shutdown --all --wait --exclude=$DestVM
echo "Backup started:"
date
qvm-backup -d $DestVM $Passphrase $BackupPath $VMsToBackup 
echo "Backup completed:"
date
qvm-start --skip-if-running sys-firewall
qvm-start --skip-if-running sys-usb
