F1::
loop
{
send {e down}
sleep 1000
send {e up}
sleep 8500
send {s down}
sleep 750
send {s up}
sleep 750
SetKeyDelay,, 20
Send, {enter}
sleep 3500
}
F2::
pause
#hi