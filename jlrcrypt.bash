#!/bin/bash

#welcome
echo ""
echo "*******************"
echo "welcome to jlrcrypt"
echo "*******************"
echo ""

#files
LOGPATH=./jlrcrypt.log
PASSPATH=./jlrcrypt.pass

if [ -f $LOGPATH ]; then
	echo $LOGPATH"... ok "
else

	echo "file: "$LOGPATH "doesn't exist..."
	echo "creating..."
	>$LOGPATH
	#@log
	LOG="file created: "$(date)
	echo $LOG >> $LOGPATH 
	
fi

if [ -f $PASSPATH ]; then
	echo $PASSPATH"... ok "
else

	echo "file: "$PASSPATH "doesn't exist..."
	echo "creating..."
	>$PASSPATH

	#@log
	LOG="file created: "$(date)
	echo $LOG >> $PASSPATH 
	echo "----------------------" >> $PASSPATH
	echo "SOURCE:PASS:E-PASS:KEY" >> $PASSPATH
	echo "----------------------" >> $PASSPATH
	
fi

#vars
OPTION=0
PASS=0
KEY=0

while [ $OPTION -ne 3 ]; do


	
	echo ""
	echo "select..."
	echo "- 1 -	show pass"
	echo "- 2 -	add pass"
	echo "- 3 -	exit"

	read OPTION

	while [ $OPTION -gt 3 ] || [ $OPTION -lt 1 ]; do
		read OPTION
	done
	
	if [ $OPTION -eq 1 ]; then
		#@log
		LOG="show pass: "$(date)
		echo $LOG >> $LOGPATH 
		cat $PASSPATH
	fi

	if [ $OPTION -eq 2 ]; then
		#@log
		LOG="add pass: "$(date)
		echo $LOG >> $LOGPATH 
		
		echo "enter a source"
		read SOURCE
		echo "enter a pass: "
		read PASS
		echo "enter a key: "
		read KEY
		
		LINE="./jlrcrypt 1 $PASS $KEY"
		echo $SOURCE":"$PASS":"$($LINE)":"$KEY >> $PASSPATH
	fi

done
