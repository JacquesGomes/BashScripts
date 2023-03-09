#! /usr/bin/bash
echo "#!/usr/bin/bash
	chmod +x $1
	echo 'Hello World'" > $1
	
bash $1
