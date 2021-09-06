alias ls="exa --long"
alias la="exa -a --long"
alias find="fd"
alias toru="trans :ru"
alias toen="trans :en"
alias goo="googler"
alias sof="googler -w=https://stackoverflow.com"
alias mdn="googler -w=https://developer.mozilla.org"

cd(){
	builtin cd "$@" && ls
}

download_website(){
