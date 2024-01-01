@echo off
echo Downloading latest Python version...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.12.1/python-3.12.1-amd64.exe', 'python-installer.exe')"

echo Installing latest Python version...
python-installer.exe /quiet InstallAllUsers=1 PrependPath=1

echo Cleaning up...
del python-installer.exe

echo Python installed successfully!
pause