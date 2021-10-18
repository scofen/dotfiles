
if test ! $(which sfdx)
then
  npm install -g sfdx-cli
fi

# Setup sfdx autocomplete
printf "eval $(sfdx autocomplete:script zsh)" >> ~/.zshrc; source ~/.zshrc