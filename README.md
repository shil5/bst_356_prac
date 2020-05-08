# bst_351
It will contain all "BST 351 Elements of Reliability &amp; Survival Analysis" R files as well as some helper files. SEM 6, 2020

I had to 
> $ git push -f origin master  
...because the command line showed an error: 
$ git push -u origin master
To https://github.com/shil5/bst_351.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'https://github.com/shil5/bst_351.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.  
...I tried doing:
$ git remote set-url origin "https://github.com/shil5/bst_351.git"  
...and:
> $ git pull origin master
From https://github.com/shil5/bst_351
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master
fatal: refusing to merge unrelated histories  
...but it bore no fruit. So, at the end I had to force push, which led to the loss of my README file that I had created here cwhile creating this repo.
Fortunately, other than that no other files were there. 
So, Mental note: Need to figure out why the error occurred. (Although I think I know that.)
**Wanna know how to curb it.**
