#!/bin/bash

COUNTRIES=("Japan" "Korea" "China" "Ingrand" "USA")

while [[ "${name}" != "quit" ]];
do
        # 名前カラム
        read -p "名前入力(quit入力で終了)" name
        if [[ -z "${name}" ]]; then
                echo "名前を入力してください"
                continue
        elif [[ "${name}" == "quit" ]]; then
                break
        fi
        # Ageカラム
        age=$(( ${RANDOM} % 100 )) #0-99までの値を取り出す
        country="${COUNTRIES[$(( ${RANDOM} % 5 ))]}" #0-4までの値を取り出す

        #IDカラム
        ## 直前のIを取得してくる
        id=$(sqlite3 mydatabase.db "SELECT ID FROM USER ORDER BY ID DESC LIMIT 1")
        (( id++ ))

        sqlite3 mydatabase.db "INSERT INTO USER(id, name, age, country) VALUES(${id}, \"${name}\", ${age}, \"${country}\")"

        if (( $? == 0 )); then
                echo "レコード挿入完了 id: ${id}, name: ${name}, age: ${age} country: ${country}"
        fi
done