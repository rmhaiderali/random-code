$ip = Get-NetIPConfiguration -InterfaceAlias "WiFi" | Select-Object -ExpandProperty IPv4DefaultGateway | Select-Object -ExpandProperty NextHop
$ip | C:\Windows\System32\clip.exe