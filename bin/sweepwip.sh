#!/usr/bin/env bash

# TODOS:
# check branches for wip?

DEFAULT_PROJECT_DIR=${SWEEPWIP_DIR:-${HOME}/Projects}
PROJECTS_DIR=${DEFAULT_PROJECT_DIR}

usage() {
  [[ -n ${1} ]] && echo -e "** ${1}\n"
  cat <<EOU
Scans directories for '.git' and outputs the state of the local git repository.

Usage $(basename $0) [ -h|--help ] [ -d DIR_TO_SCAN ] [ -abflMPRu ]

DIR_TO_SCAN     Directory where find projects  managed by git, currently it
                defaults to "${DEFAULT_PROJECT_DIR}", you can change it by
                setting the environment variable SWEEPWIP_DIR or using
                the option -d.

Uppercase options like -M will supress behavior that is eneable by default,
lowercase options do the oposite.

-h|--help       This message
-a              Shows log messages of commits ahead
-b              Shows log messages of commits behind
-d DIR          Directory to scan for repositories, it superseeds SWEEPWIP_DIR
                environment variable.
-f              Performs 'git fetch'
-l              List details of local changes
-M              Supress local changes check, this will supress -l
-P              Supress local push/pull differences
-R              Supress check for remotes
-r              Performs 'git rebase'
-u              Try fast-forward changes (git merge --ff-only)

EOU
 exit
}

# be compatible with GNU help style.
[[ ${1} == "--help" ]] && usage

# try to be backward compatible with old straight directory
# argument "sweepwip directory/", emit message, re-invoke
# with "-d" and quit the wrong invocation.
[[ -d "${1}" ]] \
  && (tput setaf 1; echo -e "*** Deprecated usage, please use -d. See --help"; tput sgr0;) \
  && (${0} -d ${@}) \
  && exit

# except 'h' here and 'p' in check_project, these
# options need to be the same
while getopts “hd:fMPRrluab” OPTION; do
  case $OPTION in
    h) usage;;
    d) PROJECTS_DIR=${OPTARG};;
   \?) usage;;
  esac
done

check_project() {
  # Options...
  LIST_COMMITS_AHEAD=
  LIST_COMMITS_BEHIND=
  PERFORM_GIT_FETCH=
	PERFORM_GIT_REBASE=
  LIST_LOCAL_CHANGES=
  FAST_FORWARD_CHANGES=
  LOCAL_CHANGES=true
  CHANGES_NOT_PUSHED=true
  REMOTE_NOT_DEFINED=true

  function _flip_option() { [[ ${1} == 'true' ]] && echo '' || echo 'true'; }

  while getopts “p:d:fMPRrluab” OPTION; do
    case $OPTION in
      d) PROJECTS_DIR=${OPTARG};;
      p) PROJECT=${OPTARG};;
      f) PERFORM_GIT_FETCH=$(_flip_option ${PERFORM_GIT_FETCH});;
      M) LOCAL_CHANGES=$(_flip_option ${LOCAL_CHANGES});;
      l) LIST_LOCAL_CHANGES=$(_flip_option ${LIST_LOCAL_CHANGES});;
      P) CHANGES_NOT_PUSHED=$(_flip_option ${CHANGES_NOT_PUSHED});;
      R) REMOTE_NOT_DEFINED=$(_flip_option ${REMOTE_NOT_DEFINED});;
			r) PERFORM_GIT_REBASE=$(_flip_option ${PERFORM_GIT_REBASE});;
      u) FAST_FORWARD_CHANGES=$(_flip_option ${FAST_FORWARD_CHANGES});;
      a) LIST_COMMITS_AHEAD=$(_flip_option ${LIST_COMMITS_AHEAD});;
      b) LIST_COMMITS_BEHIND=$(_flip_option ${LIST_COMMITS_BEHIND});;
    esac
  done

  function _colored()  { tput setaf ${1}; echo -e ${2}; tput sgr0; }
  function in_red()    { _colored 1 "${1}"; }
  function in_green()  { _colored 2 "${1}"; }
  function in_yellow() { _colored 3 "${1}"; }
  function in_cyan()   { _colored 6 "${1}"; }

  [[ ! -d ${PROJECTS_DIR} ]] && in_red "error parsing options, use --help" && exit 1

  local search_dir=${PROJECTS_DIR}  # the root from where we start our search
  local project_dir=${PROJECT%.git} # the dir found with .git striped

  function proj_name() {
    local name=${project_dir#${search_dir}}

    # restore name if search_dir is the same as the project_dir
    [[ ${name} == "/" ]] && name=${search_dir}

    name=${name#/} # remove leading '/'
    name=${name%/} # remove trailing '/'
    echo $(basename "${name}")
  }

  function dirty_git_status() {
    local status=$(git status -s)
    if [[ ${status} != "" ]]; then
      in_yellow "LOCAL CHANGES NOT COMMITED"
      while read line; do
        [[ -n ${LIST_LOCAL_CHANGES} ]] && echo -e "\t${line}"
      done <<<"${status}"
    fi
  }

  function git_changes_not_pushed() {
    local status=$(git status -sb)
    local re='ahead ([0-9]+)'
    if [[ ${status} =~ ${re} ]]; then
      in_red "COMMITS AHEAD: ${BASH_REMATCH[1]}"
      [[ -n ${LIST_COMMITS_AHEAD} ]] && \
			git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" origin/master..master \
        | while read line; do echo -e "\t${line}"; done
    fi
    re='behind ([0-9]+)'
    if [[ ${status} =~ ${re} ]]; then
      in_cyan "COMMITS BEHIND: ${BASH_REMATCH[1]}"
      [[ -n ${LIST_COMMITS_BEHIND} ]] && \
        git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" master..origin/master \
        | while read line; do echo -e "\t${line}"; done
    fi
  }

  function git_remote_defined() {
    if [[ $(git remote) == "" ]]; then
      in_red "NO REMOTES DEFINED"
    fi
  }

  function git_merge_ff_only() {
    in_cyan "RUNNING: git merge --ff-only"
    git merge --ff-only
  }

  # main execution
  local project_name=$(proj_name)
  in_green ">>> ${project_name} <<<"
  (cd "${project_dir}"
		[[ -n ${PERFORM_GIT_FETCH} ]]    && git fetch -q
    [[ -n ${PERFORM_GIT_REBASE} ]]    && git rebase 
    [[ -n ${CHANGES_NOT_PUSHED} ]]   && git_changes_not_pushed
    [[ -n ${FAST_FORWARD_CHANGES} ]] && git_merge_ff_only
    [[ -n ${LOCAL_CHANGES} ]]        && dirty_git_status
    [[ -n ${REMOTE_NOT_DEFINED} ]]   && git_remote_defined
  )
}

export -f check_project # make this available for find

find -L "${PROJECTS_DIR}"  -type d -name '.git' -exec bash -c "check_project $* -d '${PROJECTS_DIR}' -p '{}' " \;
