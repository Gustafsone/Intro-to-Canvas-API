#This script will allow you to get information from the API and return the JSON to the console directly. 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$token = "insert your token here"

$output = Invoke-RestMethod -Method GET -Uri "put endpoint here in within the quotations" -Headers @{"Authorization" = "Bearer $token"}
$output
