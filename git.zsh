#/bin/zsh
git config --global user.name "Jason R. McNeil"
git config --global user.email jason@mcneil.dev
git config --global core.excludesfile ~/.gitignore_global


if [[ ! -f ~/.gitignore_global ]];
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

# OS generated files #
######################
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# https://github.com/github/gitignore/blob/master/Global/JetBrains.gitignore
# User-specific stuff:
.idea/workspace.xml
.idea/tasks.xml
.idea/dictionaries
.idea/vcs.xml
.idea/jsLibraryMappings.xml

# Sensitive or high-churn files:
.idea/dataSources.ids
.idea/dataSources.xml
.idea/dataSources.local.xml
.idea/sqlDataSources.xml
.idea/dynamic.xml
.idea/uiDesigner.xml

## File-based project format:
*.iws

## Plugin-specific files:

# IntelliJ
/out/
EOT
fi