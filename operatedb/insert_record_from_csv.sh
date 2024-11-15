#!/bin/bash

# input_record.csvに記載のある各値を取り込みinsertしていく※ IFS=でreadの内容を取り込む
# input_record.csvの中身の例
 #10,USER1,10,Japan
 #11,USER2,11,USA
 #12,USER3,12,India
 #13,USER4,13,Germany
 #14,USER5,14,China
 #15,USER6,15,Korea

while IFS=, read -r id name age country;
do
        sqlite3 mydatabase.db "INSERT INTO USER VALUES(${id}, \"${name}\", ${age}, \"${country}\")"
done < input_record.csv