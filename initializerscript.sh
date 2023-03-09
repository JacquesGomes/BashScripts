
#!/usr/bin/bash

echo "#!/usr/bin/bash
	chmod +x $1
	echo 'Hello New Script named $1'" > $1

bash $1

