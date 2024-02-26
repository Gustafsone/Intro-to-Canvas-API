[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#==================================
# One Off API
#==================================
$token = "insert token here"

#In Powershell this type of object is called a hash table which creates the structure needed for the body of an API call.
$body = @{"parameter1"="value"
          "parameter2"="value"
          "parameter3"="value"
          "parameter4"="value"}


$output = Invoke-RestMethod -Method GET -uri "put endpoint here" -Headers @{"Authorization" = "Bearer $token"} -Body $body -ContentType "multipart/form-data"
