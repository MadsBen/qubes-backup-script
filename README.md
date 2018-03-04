# qubes-backup-script
Script for automated Qubes backup over network

<B>Requirements</B>
<ul>
  <li>DestinationVM has network access
  <li>Cifs share mounted in fstab on DestinationVM
  <li>It shutdowns every VM except DestinationVM
  <li>Passphrase is present in a file
  <li>Must be executed from dom0
  <li>Manually mount the cifs share in DestVM after each reboot...
</ul>

<B>Todo - in unprioritized order</B>:
<ul>
  <li>Automate (or make persistent) cifs mount in DestVM...
  <li>Dump a list of running VMs, so they can be started after backup is completed. (From qvm-ls)
  <li>Comments and variables for easy use
  <li>Descripe requirements
  <li>Retention and cleanup - both on time/date and number or backups
  <li>Make it usefull for USB/local backups as well
  <li>For backups to Cifs, probe if your on your local network
  <li>Make all options for qvm-backup, qvm-shutdown and qvm-start available with variables
  <li>Passphrase - does it really needs to be in a file?
  <li>Send email with status?
  <li>Easy way to include TemplateVMs
</ul>
