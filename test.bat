@echo off
REM This script downloads a file using curl

REM Set the URL of the file you want to download
set url=https://upnow-prod.ff45e40d1a1c8f7e7de4e976d0c9e555.r2.cloudflarestorage.com/EMi0JaUjmNZRsWNCCV6NbOMdoho1/e70b52cf-a021-4530-9615-1cd3a642e175?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=cdd12e35bbd220303957dc5603a4cc8e%2F20240214%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20240214T120423Z&X-Amz-Expires=43200&X-Amz-Signature=d6a0100d1db6d5b7ba15892fe023a6ae01ec1c921273dc78ef6cfb8dca8e36be&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3D%22cat.jpg_original%22

REM Set the path where you want to save the downloaded file
set output_file=cat.jpg

REM Use curl to download the file
curl -o %output_file% %url%

REM Check if the download was successful
if %errorlevel% neq 0 (
    echo Download failed.
) else (
    echo Download successful.
)
