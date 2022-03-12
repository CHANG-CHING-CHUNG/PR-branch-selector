# PR BRANCH SELECTOR
Often make a wrong PR that merges your `feature branch` into `production branch` ?
Don't want to change the target branch from `production branch` to `beta branch` everytime ?
Often forget to change the target branch from `production branch` to `beta branch` ?

This is the tool for solving above problems !!
With this tool, you can directly open the `branch comparison page` with the correct target branch.
No more merging troubles :)

# USAGE
1. Copy `pr-branch-selector.sh` to the project containing `.git` folder
2. Execute the script by typing `./pr-branch-selector.sh` under the project folder
3. Enter the number to select the target branch you want to merge into
4. The script automaticlly opens `Google Chrome` browser and direct to the `branch comparison page`

Now, you can check the diffences between the target and source branchs and make a PR request !