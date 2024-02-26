#This script will allow you to get information from the API and return the JSON to the console directly. 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$token = "insert your token here"
$courseID = ""
$userID = "self"

$output = Invoke-RestMethod -Method GET -Uri "https://mobap.instructure.com/api/v1/courses/$courseID/enrollments?user_id=$userID" -Headers @{"Authorization" = "Bearer $token"}

$object = [pscustomobject][ordered] @{
    'Canvas Course ID' = $output.id
    'Course Name' = $output.name
    'Course Code' = $output.course_code
    'Account ID' = $output.account_id
    'Enrollment Term ID' = $output.enrollment_term_id
    'Workflow State' = $output.workflow_state
}

$object
