$netstatPID = netstat -ao | findstr 1443
$pidnumRegex = [regex]"(\d+)$"
$pidnum = $pidnumRegex.Match($netstatPID);
taskkill /pid $pidnum.captures[0].Value /f

#replace 1443 with your port of choice
