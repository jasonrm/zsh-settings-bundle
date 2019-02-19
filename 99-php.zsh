#/bin/zsh
export PATH="$HOME/.composer/vendor/bin/:$PATH"

mkdir -p ${HOME}/bin
if [[ ! -f ${HOME}/bin/composer ]]; then
	echo "installing composer"
    curl https://getcomposer.org/composer.phar -o ${HOME}/bin/composer
    chmod 755 ${HOME}/bin/composer
fi
