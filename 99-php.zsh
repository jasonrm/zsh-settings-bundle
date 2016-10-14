#/bin/zsh
export PATH="~/.composer/vendor/bin/:$PATH"

mkdir -p ${HOME}/bin
if [[ ! -f ${HOME}/bin/composer ]]; then
    curl https://getcomposer.org/composer.phar -o ${HOME}/bin/composer
    chmod 755 ${HOME}/bin/composer
fi

if type "brew" > /dev/null 2>&1 && brew --prefix php-version > /dev/null 2>&1; then
  source $(brew --prefix php-version)/php-version.sh && php-version 7.0 || php-version 5.6
fi
