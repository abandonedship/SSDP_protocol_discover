#!/bin/bash
python SSDP.py >> ssdpoutput.txt
grep LOCATION ssdpoutput.txt >> ssdplocation.txt && cut -f 2- -d ' ' ssdplocation.txt >> ssdpresult.txt && a=$(cat ssdpresult.txt | tr -d '\r')
curl $a >> info.txt

