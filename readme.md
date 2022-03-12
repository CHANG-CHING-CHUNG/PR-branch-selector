# PR BRANCH SELECTOR
Often make a wrong PR that merges your `feature branch` into `production branch` ?
![](/images/feature_to_production.png)
Don't want to change the target branch from `production branch` to `beta branch` everytime ?
![](/images/manullay_choose_branch.png)
Often forget to change the target branch from `production branch` to `beta branch` ?

This is the tool for solving above problems !!
With this tool, you can directly open the `branch comparison page` with the correct target branch.
No more merging troubles :)

# USAGE
1. Copy `pr-branch-selector.sh` to the project containing `.git` folder
2. Execute the script by typing `./pr-branch-selector.sh` under the project folder
![](/images/execute_script.png)
3. Enter the `number` to select the target branch you want to merge into
![](/images/choose_branch.png)
4. The script automaticlly opens `Google Chrome` browser and direct to the `branch comparison page`
![](/images/open_browser.png)
![](/images/branch_comparison_page.png)
Now, you can check the differences between the target and source branchs and make a PR request !

**Note:** If you want to stop the script, just type `0` in the terminal.
![](/images/cancell.png)

