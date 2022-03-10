gitRepoURL=$(git config --get remote.origin.url)
currentBranch=$(git rev-parse --abbrev-ref HEAD)

if [[ $gitRepoURL =~ ^(https) ]] && [[ $gitRepoURL =~ ^https:\/\/[A-Za-z0-9.-]+\/(.*).git ]]
then
  repoURL=${BASH_REMATCH[1]}
elif [[ $gitRepoURL =~ ^(git@) ]] && [[ $gitRepoURL =~ :(.*).git ]]
then
  repoURL=${BASH_REMATCH[1]}
fi
echo "Your Current Branch: ${repoURL}"

gitRemoteBranches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)')
echo "Remote Branch List: "
PS3='Select a target branch to merge into: '
options=($gitRemoteBranches)
select opt in "${options[@]}"
do
  if [[ $opt ]]; then
    targetBranch=$opt
    echo "Selected target branch to merge into: ${targetBranch}" && 
    echo "Browser opening..." &&
    open -a "Google Chrome" https://github.com/$repoURL/compare/$targetBranch...$currentBranch
    break
  else
    echo "Please enter a valid number !!"
  fi
done
