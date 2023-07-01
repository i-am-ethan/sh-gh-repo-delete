echo -n "user-name:"
read uname 

while IFS= read -r line
do
  reponame=$uname"/"$line
  gh repo delete --yes $reponame
  echo "Delete $reponame"
done << EOF
animal-quiz
useSummarizeAPI
setTimeout
setINterval_decimals
setInterval-and-randomObj
css-absolute
timer-js
EOF
