alias R="R --no-save --quiet --no-restore-data"

eval $(ssh-agent)
ssh-add ~/.ssh/bitbucket_rsa
