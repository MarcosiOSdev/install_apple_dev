### install_dev_tools.sh 
### Pass-by-Pass to install
### sudo chmod +x install_dev_tools.sh 
### ./install_dev_tools.sh


# homebrew
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew and package
brew update & brew upgrade

# install all packages
brew install git
brew install node
brew install yarn
brew install python
brew install cocoapods
brew install carthage
brew install swiftlint
brew install mongodb
brew install mysql
brew install docker
brew install docker-compose

# xUnique
pip install xUnique
xunique -h
gem install xcode-install
remove outdated versions
brew cleanup

#Fonts FiraCode
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# install all npm packages
npm i -g nodemon
npm i -g create-react-app
npm i -g gatsby-cli


#install Bundle
gem install bundler:2.0.2
bundle install

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup zsh
cp .zshrc ~/.zshrc

# set zsh as default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# iTerm
brew cask install iterm2

#Fonts para Terminal
brew tap homebrew/cask-fonts
brew cask install font-fira-code

#Thema Spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#PLUGINS Zinit para iTerm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Simulator Fullscreen
defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES


# Alias in zshrc.
echo "alias git-commit=\"git add . && git commit -m \"" >> ~/.zshrc &&
echo "alias git-pull=\"git pull --rebase origin \"" >> ~/.zshrc
echo "alias simulator-list=\"xcrun simctl list\"" >> ~/.zshrc
echo "alias simulator-open=\"open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app\"" >> ~/.zshrc
echo "alias pod-reset=\"pod deintegrate && pod cache clean --all && pod install --repo-update\"" >> ~/.zshrc
source ~/.zshrc

# Speedtest
brew tap teamookla/speedtest
brew update
brew install speedtest --force

# Swift On VSCode
git clone https://github.com/apple/sourcekit-lsp.git
cd sourcekit-lsp/Editors/vscode/
npm run createDevPackage
code --install-extension out/sourcekit-lsp-vscode-dev.vsix

# Vapor
brew tap vapor/tap
brew install vapor/tap/vapor

# GraphQL
pip install graphene
