#!/bin/bash

function bindmount() {
    if [ -d "$1" ]; then
        mkdir -p "$2"
    fi
    mount --bind $3 "$1" "$2"
}

bindmount /var/www/html/dev-wordpress/wp-content /home/dev/wp-content
bindmount /var/www/html/comingsoon /home/comingsoon/html
