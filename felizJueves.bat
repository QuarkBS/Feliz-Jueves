@echo off
for /f %%i in ('powershell ^(get-date^).DayOfWeek') do set dow=%%i
if %dow% == Thursday goto playSound
exit

:playSound
powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\FelizJueves.wav").PlaySync();
Exit;