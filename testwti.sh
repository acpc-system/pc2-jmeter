#!/bin/bash
if [ -f result.xmls ]
then
		rm result.xmls
fi
CO=$(ls -l web/ | grep -v "^total"|wc -l)
if [ ${CO} -ge 1 ]
then
	rm -Rf web/*
fi
apache-jmeter-5.5/bin/jmeter -n -t pc2-test.jmx -l result.xmls -e -o  web/
