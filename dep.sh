
#!/bin/bash

git add .
git commit -m "ok"
git push


if git checkout deploy; then
    git rm -r .
    git checkout -f main build
    mv build/* .
	echo "node_modules/" > .gitignore
    git add .
    git commit -m "ok"
    git push origin deploy

    # Create .htaccess file
    echo "<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteBase /
  RewriteRule ^index\.html$ - [L]
  RewriteCond %{REQUEST_FILENAME} !-f
  RewriteCond %{REQUEST_FILENAME} !-d
  RewriteCond %{REQUEST_FILENAME} !-l
  RewriteRule . /index.html [L]
</IfModule>" > .htaccess

    git add .htaccess
    git commit -m "Add .htaccess file"
    git push origin deploy

    git checkout main
else
    echo "Checkout to 'dep' branch failed."
fi
