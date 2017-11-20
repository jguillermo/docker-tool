#!/usr/bin/env bash

#set -e

CK='\u2714'
ER='\u274c'

alias cls='printf "\033c"'

export DEV_UID=$(id -u)
export DEV_GID=$(id -g)

command_exists ()
{
    type "$1" &> /dev/null ;
}

app_install()
{
    echo Installing the command
	sudo cp bin/php.sh /usr/bin/php
	sudo cp bin/composer.sh /usr/bin/composer
	echo Install successful
}

app_uninstall()
{
    echo Uninstalling the command
	sudo rm -f /usr/bin/php
	sudo rm -f /usr/bin/composer
	echo Uninstall successful
}

app_docker_images_build()
{
   docker-compose -f docker.build.yml build $@
}


case "$1" in
"install")
    app_install
    ;;
"uninstall")
    app_uninstall
    ;;
"build")
    app_docker_images_build ${@:2}
    ;;
*)
    echo -e "\n\n\n$ER [APP] No se especifico un comando valido\n"
    ;;
esac