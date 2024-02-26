#This script will allow you to get information from the API and return the JSON to the console directly. 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$token = "insert your token here"
$courseID = ""
$userID = "self"

$output = Invoke-RestMethod -Method GET -Uri "https://mobap.instructure.com/api/v1/courses/$courseID/enrollments?user_id=$userID" -Headers @{"Authorization" = "Bearer $token"}

$object = [pscustomobject][ordered] @{
    Name = $output.user.short_name
    Email = $output.user.login_id
    Role = $output.role
    'Enrollment Status' = $output.enrollment_state
}

$object

