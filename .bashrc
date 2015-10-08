# Make sure bin/ is on the PATH
export PATH=$PATH:~/bin

# More-helpful bash PS1
export PS1="\e[0;32m\H \W\$ \e[m "

# Quiet R startup, never use workspaces
alias R="R --no-save --quiet --no-restore-data"

# Creates symlinks for all of the DataCamp slide files in the Revo_Course_Mat dir, where they can be built
alias linkslides="for file in ~/DataCamp/intro_*/*slides.Rmd; do ln -s ~/$file ~/modules/datacamp_slides/src/; done;"

# Quick alias for syncing files from the server.
alias fetch="rsync -aP --delete coursedev:/home/matt.parker/transfer/ ~/Desktop/transfer/. "
