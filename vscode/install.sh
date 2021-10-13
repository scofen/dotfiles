# I'll probably remove this install file in favor of vs code's Sync capabilities
# but for now I'll have some fun with it.

if test ! "$(which code)"
  then
  exit 0
fi

echo "installing vscode extensions"
code --install-extension salesforce.salesforcedx-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension davidanson.vscode-markdownlint
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension esbenp.prettier-vscode
