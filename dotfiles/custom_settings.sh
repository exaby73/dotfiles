# SSH
eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/github 2> /dev/null
ssh-add ~/.ssh/gitlab 2> /dev/null
ssh-add ~/.ssh/buzzapp-dev 2> /dev/null

# General
alias c="clear"
alias clearswap='sudo swapoff -a && sudo swapon -a && exit'
alias copy="xclip -selection clipboard"
alias fixmouse='sudo rmmod psmouse && sudo modprobe psmouse'
alias ht='cd /opt/lampp/htdocs/'
alias la='ls -a'
alias lampp='sudo /opt/lampp/lampp'
alias ll='ls -al'
alias lock='xdg-screensaver lock ; exit'
alias nn="npm"
alias nnr="npm run"
alias nv='nvim'
alias nvconf='nvim ~/dotfiles/init.vim'
alias nvsettings='nvim ~/dotfiles/custom_settings.sh'
alias o='xdg-open'
alias off='systemctl poweroff -i ; exit'
alias sp='systemctl suspend -i ; exit'
alias ta='tmux a || tmux'
alias yy='yarn'
alias yya='yarn add'
alias yyad='yarn add -D'

# IDEs
# alias an='android-studio . & disown %android-studio && exit'
alias ce='code . && exit'
alias cie='code-insiders . && exit'
alias an='open -a /Applications/Android\ Studio.app'
alias ane='open -a /Applications/Android\ Studio.app . && exit'
alias in='open -a /Applications/IntelliJ\ IDEA.app'
alias ine='open -a /Applications/IntelliJ\ IDEA.app . && exit'
alias wb='open -a /Applications/WebStorm.app'
alias wbe='open -a /Applications/WebStorm.app . && exit'

# Update system
alias u='yay -Syyuu'
alias uae='u && exit'
alias uas='u && shutdown now'

# Flutter
alias fl="fvm flutter"
alias fpa='fvm flutter pub add'
alias fpad='fvm flutter pub add -d'
alias fpr='fvm flutter pub remove'
alias fpb='fvm flutter pub run build_runner build --delete-conflicting-outputs'
alias fpbf='fvm flutter pub run build_runner build --delete-conflicting-outputs --build-filter'
alias fpbe='fvm flutter pub run build_runner build --delete-conflicting-outputs && exit'
alias fpbw='fvm flutter pub run build_runner watch --delete-conflicting-outputs'
alias fpbc='fvm flutter pub run build_runner clean'
alias fpc="fvm flutter clean"
alias fpg="fvm flutter pub get"
alias fpu="fvm flutter pub upgrade"
alias fpun="fvm flutter pub upgrade --null-safety"

# Games
alias mc="java -jar $HOME/games/mc.jar ; exit"

# Networking
alias mode-man='sudo ifconfig wlp3s0 down && sudo airmon-ng check kill && sudo iwconfig wlp3s0 mode managed && sudo ifconfig wlp3s0 up && sudo systemctl start NetworkManager'
alias mode-mon='sudo ifconfig wlp3s0 down && sudo airmon-ng check kill && sudo iwconfig wlp3s0 mode monitor && sudo ifconfig wlp3s0 up'

# Python
alias mkmn='python manage.py makemigrations'
alias mn='python manage.py migrate'
alias penv='pipenv shell'
alias pipr='pip freeze > requirements.txt'
alias rs='python manage.py runserver'

# Hacks :)
alias mm="python3 ~/dev/m.py & disown %python3 && exit"
alias mms="python3 ~/dev/ms.py & disown %python3 && exit"
alias connectThroughBuzzDev="sshuttle -r dev@dev1.beanstalkedu.com 0.0.0.0/0"
alias connectThroughBuzzProd="sshuttle -r ubuntu@13.126.2.68 0.0.0.0/0"

# Temporary project aliases
alias bad="cd $HOME/dev/beanstalk/buzz-mobile-app-admission-form"
alias bauth="cd $HOME/dev/beanstalk/buzz-auth-management"
alias bchat="$HOME/dev/beanstalk/buzz-chat-api-socketio"
alias bdis="cd $HOME/dev/beanstalk/buzzSchool"
alias bean="cd $HOME/dev/beanstalk"
alias bman="cd $HOME/dev/beanstalk/buzzschoolmanagement"
alias bnoti="cd $HOME/dev/beanstalk/buzz-notification-service"
alias bweb="cd $HOME/dev/beanstalk/buzzschoolweb"
alias bwl="cd $HOME/dev/beanstalk/buzz-white-lable-school-mobile-app"

alias bform="cd $HOME/dev/beanstalk/buzz-mobile-app-admission-form"
alias bland="cd $HOME/dev/beanstalk/buzz-school-landing-page"
alias bpreview="cd $HOME/dev/beanstalk/buzz-preview-app"
alias bpwa="cd $HOME/dev/beanstalk/buzz-pwa-app"

alias sd="cd $HOME/dev/beanstalk/school-discovery-application-v2.0"
alias sm="cd $HOME/dev/beanstalk/management-mobile-app"

alias nc="cd $HOME/dev/nevercode"

# Shortcuts (Work)
alias devserver="ssh dev@dev1.beanstalkedu.com"
alias v21="scrcpy -s 3085425058000NM & disown %scrcpy && exit"

# Environment Variables
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk/"
export CHROME_EXECUTABLE="/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
export DENO_INSTALL="/Users/nabeelparkar/.deno"
export EDITOR=$VISUAL
export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
export JAVA_HOME="/opt/homebrew/opt/openjdk@11"
export LANG=en_US.UTF-8
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/platform-tools:$HOME/bin:$HOME/.config/composer/vendor/bin:/snap/bin:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="$PATH:$HOME/dev/depot_tools"
export PATH="$PATH:$HOME/fvm/default/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/lib/mongodb/bin"
export PATH="$PATH:/Users/nabeelparkar/dev/v"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/lampp/bin"
export PATH="$PATH:/usr/lib/dart/bin"
export VISUAL="nvim"
export XDG_CONFIG_HOME="$HOME"
