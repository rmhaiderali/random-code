$ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "WiFi" | Select-Object -ExpandProperty IPAddress
$ip | C:\Windows\System32\clip.exe

# $ip = Get-NetIPConfiguration -InterfaceAlias "WiFi" | Select-Object -ExpandProperty IPv4Address | Select-Object -ExpandProperty IPAddress
# $ip | C:\Windows\System32\clip.exe