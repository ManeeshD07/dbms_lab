from . import app

from Lab3 import Mysqlhandler

@app.route("/user/register",methods=["POST"])

def add_user():
    data = Mysqlhandler.add_user()
    return data

@app.route("/user/update",methods=["POST"])

def update_user():
    data = Mysqlhandler.update_user()
    return data

@app.route("/user/delete",methods=["POST"])

def delete_user():
    data = Mysqlhandler.delete_user()
    return data

@app.route("/user/view",methods=["GET"])

def display_users():
    data = Mysqlhandler.display_users()
    return data
