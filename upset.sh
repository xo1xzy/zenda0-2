#!/bin/bash 
clear 

# Commands
check_branch_remote() {
    git remote -vv 
    git branch -vv
}

push_up_main() {
    echo "# From Zenda0 to zenda0-2" >> README.md
    git init
    git add .
    git commit -m "first comit from zebnda0_zenda0-2"
    git branch -M main
    git remote add origin git@github.com:xo1xzy/zenda0-2.git
    git push -u origin main
}

normal_push() {
    git add .
    git commit -m "update"
    git push
}

# Submodule 
submod() {
    git submodule status
}

# Execute 
# push_up_main
normal_push
check_branch_remote