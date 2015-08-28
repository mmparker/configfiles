# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias R="R --no-save --quiet --no-restore-data"
alias linkslides="for file in ~/DataCamp/intro_*/*slides.Rmd; do ln -s ~/$file ~/modules/misc_slides/src/; done;"
