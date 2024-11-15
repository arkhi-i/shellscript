#!/bin/bash

# 名前を入力後、その名前があるレコードを削除する
read -p "削除する名前を入力" name

sqlite3 mydatabase.db "DELETE FROM USER WHERE NAME=\"${name}\""