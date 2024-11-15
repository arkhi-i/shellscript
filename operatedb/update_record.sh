#!/bin/bash

read -p "年齢を変更する名前を入力" name
read -p "変更したい年齢を入力" age

sqlite3 mydatabase.db "UPDATE USER SET AGE=${age} WHERE NAME=\"${name}\""