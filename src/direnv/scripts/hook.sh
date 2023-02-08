
eval "$(direnv hook bash)"

if [ -e .envrc ]; then /usr/bin/direnv allow; fi