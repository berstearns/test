python -m pip install -r requirements.txt -U
lektor build --output-path website
mv -i website/* .
rm -rf website
git config --global user.name 'berstearns'
git config --global user.email 'bernardo.stearns@gmail.com'
git add .
git stash
git remote update
git fetch 
git checkout ghpages
git checkout stash -- .
git add .
git commit -am "[GITHUB ACTIONS] Automated blog generation"
git push origin ghpages 
