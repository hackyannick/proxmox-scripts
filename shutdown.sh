#!/bin/bash
qm status 100 | grep running
if [ $? -eq 0 ]
then
        echo "YH-DC01 ist noch Online, der Host bleibt Online."
else
        echo "YH-DC01 ist seit 5 Minuten Offline fahre Host jetzt Herunter"
        shutdown -h now
fi
