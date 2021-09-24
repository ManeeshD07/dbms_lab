import mysql.connector

class Mysqlhandler:
    def add_user():
        cnx = mysql.connector.connect(user='root', password='Rux@53707', database='userdb')
        cursor=cnx.cursor()

        query=("insert into student(name,dob,course) values('olivia','1999-09-12','ECE')")

        cursor.execute(query)
        cnx.commit()

    def update_user():
        cnx = mysql.connector.connect(user='root', password='Rux@53707', database='userdb')
        cursor=cnx.cursor()

        query=("update student set dob='1999-09-09' where name='otis'")

        cursor.execute(query)
        cnx.commit()

    def delete_user():
        cnx = mysql.connector.connect(user='root', password='Rux@53707', database='userdb')
        cursor=cnx.cursor()

        query=("delete from student where name = 'olivia'")
        
        cursor.execute(query)
        cnx.commit()

    def display_users():
        cnx = mysql.connector.connect(user='root', password='Rux@53707', database='userdb')
        cursor=cnx.cursor()

        query=("select * from student")

        cursor.execute(query)
        result = list(cursor)

        for x in result:
            print(x)

    if __name__ == "__main__":
        print("1. add user, 2. update user, 3. delete user, 4. display users")
        val = int(input("Enter a number between 1 and 4: "))
        
        if(val == 1):
            add_user()
        elif(val == 2):
            update_user()
        elif(val == 3):
            delete_user()
        elif(val == 4):
            display_users()

    
