# DB操作

## 前提
dbサーバはSQLiteを利用

1.  sqliteをインストールする
```
# yum install sqlite
```

2. 事前にdb、tableを作成しておく
    - dbの作成
    ```
    # sqlite3 (db名)
    
    例: sqlite3 mydatabase.db
    ```

    - tableの作成
    ```
    # CREATE (テーブル名)(カラム1, カラム2, カラム3 ...) VALUES(値1, 値2, 値3)
    例: CREATE USER  (
            id int primarykey, # ※idというカラムをprimarykeyとする
            name char(255),
            age int,
            country char(255)
            )
            VALUES(
                1, "Taro", 10, "Japan"
                );
    
    ※作成したtableの内容を確認する
    # .table
    ```

