powershell
Copy code
$vol = 40
$vol = $vol / 100
$device = Get-AudioDevice -Playback
$device.AudioEndpointVolume.MasterVolumeLevelScalar = $vol





