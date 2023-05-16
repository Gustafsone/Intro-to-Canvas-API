<#
This script will allow you to get information from the API and store the output into a PowerShell variable to use later.
Sometimes it is necessary to store the output into a variable so that you can access information embedded further down in the 
JSON branches.
#>
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$token = "insert your token here"

$output = Invoke-RestMethod -Method GET -Uri "put endpoint here in within the quotations" -Headers @{"Authorization" = "Bearer $token"}

<#
In order to read the data from the variable run the variable $output in the console.

If there is data stored further down in the JSON branch that you need to access or only want one specific piece of data from the result,
you can use the properties of varibales to access that data. For example (and depedning on the data returned), if you returned data
hat included user information and needed the user data you can type $output.user to get the informaton from the 
user associated with the result from the API. 
#>
