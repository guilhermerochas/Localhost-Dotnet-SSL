#!/usr/bin/env bash

if [[ -x "$(command -v mkcert)" ]]; then
    mkcert -install
    if [[ -d "./Certs" ]]; then
        echo "creating Certs folder..."
        mkdir $(pwd)/Certs
    fi 
    mkcert -cert-file ./Certs/localhost.crt -key-file ./Certs/localhost.key localhost
    echo "Certificates created!"
    return 0
else 
    echo "make sure mkcert is installed..."
    return 1
fi