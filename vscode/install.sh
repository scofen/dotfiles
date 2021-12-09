# I'll probably remove this install file in favor of vs code's Sync capabilities
# but for now I'll have some fun with it.

if test ! "$(which code)"
  then
  exit 0
fi

echo "installing vscode extensions"
code --install-extension salesforce.salesforcedx-vscode > /dev/null
code --install-extension dbaeumer.vscode-eslint > /dev/null
code --install-extension donjayamanne.githistory > /dev/null
code --install-extension eamodio.gitlens > /dev/null
code --install-extension davidanson.vscode-markdownlint > /dev/null
code --install-extension shd101wyy.markdown-preview-enhanced > /dev/null
code --install-extension esbenp.prettier-vscode > /dev/null
echo "vscode extensions installed"