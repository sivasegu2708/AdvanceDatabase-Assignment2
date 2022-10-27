import sqlite3

# DB-API spec for talking to relational databases in Python

connection = sqlite3.connect("shopping_list.db")

cursor = connection.cursor()

try:
    cursor.execute("drop table list")
except:
    pass

cursor.execute("create table list (id integer primary key, description text)")

cursor.execute("insert into list (description) values ('oranges')")
cursor.execute("insert into list (description) values ('apple')")
cursor.execute("insert into list (description) values ('pineapple')")

connection.commit()
connection.close()

print("done.")
