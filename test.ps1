$webresult = Invoke-WebRequest -UseBasicParsing -Uri google.com1 -ErrorAction SilentlyContinue

if ($webresult.statuscode -ne 200 ) {
    Write-Host $Error
} else {
    Write-Host $webresult.Content
}


function get-revathi {
 param (
     $uri
 )

    $webresult = Invoke-WebRequest -UseBasicParsing -Uri $uri -ErrorAction SilentlyContinue

if ($webresult.statuscode -ne 200 ) {
    Write-Host $Error
} else {
    Write-Host $webresult.StatusDescription
}
}


test