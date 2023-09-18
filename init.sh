# # generate new ssh key
ssh-keygen -t ed25519;

# #  TODO add a pause here to upload ssh key to places
# #  TODO ssh add
echo "use public key hit enter to continue, use q to quit \n "
read x

if [ "$x" == "q" ];
then
    echo 'abort!';
    exit 0;
fi;

ssh-add


# # install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\n"
# # install useful packages
brew install visual-studio-code simplenote postgresql imagemagick trash python node yarn npm nvm google-chrome zoom postman slack docker dbeaver-community;
# # install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
# # create folders
cd ~; mkdir Things;
cd ~/Things

git clone git@github.com:MikeyManoguerra/dotfiles.git
cd dotfiles
cp .editorconfig ~/.editorconfig
cp .gitconfig ~/.gitconfig
# cp .prettierrc ~/.prettierrc
# export PGDATA='/usr/local/var/postgres'
# export PATH="/usr/local/sbin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"

source ~/.zshrc;

npm install -g @angular/cli
