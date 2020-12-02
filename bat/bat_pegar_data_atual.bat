echo Data da Pesquisa = %date%

echo Data atual:  %DATE%

echo Data atual:  %DATE:~-4%%DATE:~-7,2%%DATE:~-10,2%

echo Data atual: %DATE:~-4%%DATE:~-10,2%%DATE:~-7,2%

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
set fmonth=00%Month%
set fday=00%Day%
set today=%Year%-%fmonth:~-2%-%fday:~-2%
echo Data atual: %today%