$netstatPID = netstat -ao | findstr 1443
$pidnumRegex = [regex]"(\d+)$"
$pidnum = $pidnumRegex.Match($netstatPID);
taskkill /pid $pidnum.captures[0].Value /f

# replace 1443 with your port of choice

# To find the port for an executable:
$Get-Process | Select-Object -Property Name,Id,Description | Format-Table | findstr <exe_name>
# id will be the PID
$netstat -ao | findstr <pid>
# wait
