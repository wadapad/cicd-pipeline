#!/usr/bin/bash

case $1 in
  main)
    echo "hey maiin"
    cp ./jenkins/main.svg ./src/logo.svg
    ;;
  dev)
    echo "hey devv"
    cp ./jenkins/dev.svg ./src/logo.svg
    ;;
esac
