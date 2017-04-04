#!/bin/bash

# Variable '$?' is the exit status of a command

FILES="WC-ngi
input2A
WS
WC-16"

# Loop through files.
for f in $FILES
do
	# Provide some feedback.
	echo -n "Removing newlines from $f.plain... "
	
	# Copy file to temp file.
	cp $f.plain $f-tmp.plain
	
	# Remove newlines from temp file and write to originalfile.
	tr -d "\n" < $f-tmp.plain > $f.plain
	
	# Remove temp file.
	rm $f-tmp.plain
	
	echo "Done"
	
	# Provide some feedback.
	echo -n "Removing newlines from $f.crc... "
	
	# Copy file to temp file.
	cp $f.crc $f-tmp.crc
	
	# Remove newlines from file and write to file.
	tr -d "\n" < $f-tmp.crc > $f.crc
	
	# Remove temp file.
	rm $f-tmp.crc
	
	echo "Done"
	
done

# Remove newlines from WS-BOGUS.crc.

f="WS-BOGUS"

# Provide some feedback.
echo -n "Removing newlines from $f.crc... "

# Copy file to temp file.
cp $f.crc $f-tmp.crc

# Remove newlines from temp file and write to original file.
tr -d "\n" < $f-tmp.crc > $f.crc

# Remove temp file.
rm $f-tmp.crc

echo "Done"

exit 0


