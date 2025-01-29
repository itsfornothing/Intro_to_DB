import mysql.connector


mydb = mysql.connector.connect(host="127.0.0.1", user="root", passwd="Haha123@&$")

my_cursor = mydb.cursor()

my_cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
print("Database 'alx_book_store' created successfully!")

my_cursor.close()
mydb.close()
