echo -n "user-name:"
read uname 

while IFS= read -r line
do
  reponame=$uname"/"$line
  gh repo delete --yes $reponame
  echo "Delete $reponame"
done << EOF
sample_app
EOF
