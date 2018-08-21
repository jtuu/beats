#!/usr/bin/env bash

IFS=" " read h m s <<< $(TZ="UTC-1" date +"%H %M %S")
beats=$(bc -l <<< "($s + ($m * 60) + ($h * 3600)) / 86.4")
printf "%06.2f\n" "$beats"
