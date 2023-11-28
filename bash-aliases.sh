#!/bin/sh

# GIT aliases
alias gadd="git add"
alias gamendn="git commit --amend --no-edit"
alias gbl="git branch --list"
alias gc="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias glog="git log"
alias gpush="git push"
alias gpull="git pull"
alias grebase="git rebase"
alias gs="git status"
alias gstash="git stash"
alias gstashp="git stash pop"
gcommit() {
  msg="$1"
  branch=$(git rev-parse --abbrev-ref HEAD)
  git commit -m "$branch: $msg"
}

# KUBERNETES aliases
kubeLogs () {
  kubectl logs -n $1 -f $2
}

kubeDescribe () {
  kubectl describe -n $1 $2
}

kubeGetPods () {
  kubectl get pods -n $1;
}

kubeExecBash () {
  kubectl exec -it -n $1 $2 /bin/bash
}

kubeExecSh () {
  kubectl exec -it -n $1 $2 /bin/sh
}

kubeExecCommand () {
  kubectl exec -n $1 $2 -- $3
}

kubeExecBashContainer () {
  kubectl exec -it -n $1 -c $2 $3 /bin/bash
}

kubeExecShContainer () {
  kubectl exec -it -n $1 -c $2 $3 /bin/sh
}

kubeExecContainer () {
  kubectl exec -n $1 -c $2 $3 -- $3
}

kubeGetNamespaces () {
  kubectl get namespaces
}

kubePortForward () {
  kubectl port-forward -n $1 $2 $3
}
