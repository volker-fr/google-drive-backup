Google Drive Backup
===================

A python script to sync your google drive contents.

## Features
* You can Download your entire google drive or any given folder
* Downloads a file only if it has been modified since last download
* Logs all actions (optional)
* Uses OAuth2 authentication and can remember authentication

## Requirements
* Google API Python library. To install run
`pip install --upgrade google-api-python-client` or
`easy_install --upgrade google-api-python-client`

## Setup
* Create and download your client secrets file, following the directions [here](https://developers.google.com/identity/sign-in/web/devconsole-project). Note that the Authorised Redirect URIs might require a trailing slash, whereas the JavaScript origins must not have one.
* Copy the client secrets file to "client_secrets.json" in the same directory as the drive.py script.
* Now, if you run `python drive.py`, a browser window/tab will open for you to authenticate the script.
* Once authentication is done, the script will start downloading your *My Drive*. Refer the next section for more options.

## Options
Following command line options are available.

**--destination** - Path to the folder where the files have to be downloaded to. If not specified, a folder named `downloaded` is created in the current directory.

**--debug** - If present (accepts no value), every step will be logged to the log file.

**--logfile** - Path to the file to which the logs should be written to. By default, writes to `drive.log` in the current directory. The file will be overwritten every time the script is run.

**--drive_id** ID of the folder which you want to download. By default, entire "My Drive" is downloaded.
