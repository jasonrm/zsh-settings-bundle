#/bin/zsh
git config --global user.name "Jason R. McNeil"
git config --global user.email jason@jasonrm.net
git config --global core.excludesfile ~/.gitignore_global


cat <<EOT > ~/.gitignore_global
# Compiled source #
###################
*.com
*.class
*.dll
*.exe
*.o
*.so

# Packages #
############
# it's better to unpack these files and commit the raw source
# git has its own built in compression methods
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

# Logs and databases #
######################
*.log
*.sql
*.sqlite

# Project files      #
######################
.idea

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
EOT
