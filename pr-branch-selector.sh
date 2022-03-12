# Color section
# For echo
RED='\033[0;31m'
YELLOW='\033[0;33m'
LIGHT_GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Git repo & branch section
gitRepoURL=$(git config --get remote.origin.url)
currentBranch=$(git rev-parse --abbrev-ref HEAD)
gitRemoteBranches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)')


# Filter URL protocol to get the report URL
if [[ $gitRepoURL =~ ^(https) ]] && [[ $gitRepoURL =~ ^https:\/\/[A-Za-z0-9.-]+\/(.*).git ]]
then
  repoURL=${BASH_REMATCH[1]}
elif [[ $gitRepoURL =~ ^(git@) ]] && [[ $gitRepoURL =~ :(.*).git ]]
then
  repoURL=${BASH_REMATCH[1]}
fi
echo  "${RED}Your Current Branch${YELLOW}: ${repoURL}${NC}"

echo "${LIGHT_GREEN}Remote Branch List: ${NC}"
PS3=$'\e[0;31mSelect a target branch to merge into: \e[0m'
options=($gitRemoteBranches)
select opt in "${options[@]}"
do
  if [[ $opt ]]; then
    targetBranch=$opt
    echo "Selected target branch to merge into: ${YELLOW}${targetBranch}${NC}" && 
    echo "Browser opening..." &&
    open -a "Google Chrome" https://github.com/$repoURL/compare/$targetBranch...$currentBranch
    break
  else
    echo "Please enter a valid number !!"
  fi
done
