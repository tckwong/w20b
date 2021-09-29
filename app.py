import dbcreds
import mariadb

conn = None
cursor = None

def registerUser():
    newUser = input("Input new username: ")
    newPass = input("Input new password: ")
    try:
        cursor.execute("INSERT INTO hackers(alias, password) VALUES(?, ?)", [newUser, newPass])
    except mariadb.DataError:
            print("Something wrong with your inputs")
    except mariadb.OperationalError:
            print("Operational error on query")
    if(cursor.rowcount == 1):
        print("New user register sucessful")
        conn.commit()
    else:
        print("Failed to update")

def addExploit():
    print("Please insert a new exploit to list: ")
    usr_content_input = input()
    try:
        cursor.execute("INSERT INTO exploits(content, user_id) VALUES(?, (SELECT id FROM hackers WHERE alias=?))", [usr_content_input, user_input_name])
    except mariadb.DataError:
        print("Something wrong with your inputs")
    except mariadb.OperationalError:
        print("Operational error on query")
    if(cursor.rowcount == 1):
        print("New exploit added")
        conn.commit()
    else:
        print("Failed to update")

def getAllExploits():
    cursor.execute("SELECT content FROM exploits")
    exploit_list = cursor.fetchall()
    print("There are ", cursor.rowcount, " exploits in total!")
    for exp in exploit_list:
        print(exp)

def getOtherExploits():
    cursor.execute("SELECT alias, exploits.content FROM hackers INNER JOIN exploits ON exploits.user_id = hackers.id WHERE hackers.alias != ?",[user_input_name])
    exploit_list = cursor.fetchall()
    print("There are ", cursor.rowcount, " exploits in total!")
    for exp in exploit_list:
        print(exp)

def modifyExploit():
    i = 1
    try:
        cursor.execute("SELECT exploits.content FROM exploits INNER JOIN hackers ON exploits.user_id = hackers.id WHERE hackers.alias = ?", [user_input_name])
        my_exploit_list = cursor.fetchall()
        print(my_exploit_list)
        for list in my_exploit_list:
            print(i,list)
            i = i+1
    except mariadb.DataError:
        print("Something wrong with your inputs")
    except mariadb.OperationalError:
        print("Operational error on query")
    index = int(input("Modify which exploit? "))
    new_content = input("Input new exploit: ")
    index = index-1
    selection = my_exploit_list[index]
    try:
        cursor.execute("UPDATE exploits SET content = ? WHERE content = ?", [new_content, selection[0]])
    except mariadb.DataError:
        print("Something wrong with your inputs")
    except mariadb.OperationalError:
        print("Operational error on query")
    if(cursor.rowcount == 1):
        print("Exploit updated")
        conn.commit()
    else:
        print("Failed to update")

def checkLoginCreds(alias, password):
    cursor.execute("SELECT alias, password FROM hackers WHERE alias=?",[alias])
    getUserInfo = cursor.fetchone()
    #check inputs against database
    if (getUserInfo[0] == alias and getUserInfo[1] == password):
        print("Login Successful")
    else:
        print("Incorrect username/password combination")
        cursor.close()
        conn.close()
try:
    conn = mariadb.connect(
                        user=dbcreds.user,
                        password=dbcreds.password,
                        host=dbcreds.host, 
                        port=dbcreds.port,
                        database=dbcreds.database,
                        )
    cursor = conn.cursor()

    #Run first option for new user/ existing login
    while True:
        print("--------------------------------------------------------------------------------")
        print("Please make selection: \n1.Register new user \n2.Login existing user")
        userChoiceLogin = int(input())
        
        if (userChoiceLogin == 1):
            registerUser()
        elif (userChoiceLogin == 2):
            break
        else:
            print("Error, please input either 1, 2, 3, or 4")
            continue
    
    #Execute user login code
    user_input_name = input("Input username: ")
    user_input_pw = input("Input password: ")
    if not user_input_name or not user_input_pw:
        raise ValueError
    else:
        print("Log in Successful")
        checkLoginCreds(user_input_name, user_input_pw)

    while True:
        print("--------------------------------------------------------------------------------")
        print("You have 4 choices: \n1.Add an exploit \n2.See all exploits \n3.See other users' exploits \n4.Exit application \n5.Modify an exploit")
        userChoice = int(input())
        
        if (userChoice == 1):
            addExploit()
        elif (userChoice == 2):
            getAllExploits()
        elif (userChoice == 3):
            getOtherExploits()
        elif (userChoice == 4):
            break
        elif (userChoice == 5):
            modifyExploit()
        else:
            print("Error, please input either 1, 2, 3, 4 or 5")
            continue

except mariadb.DataError:
    print("Something wrong with your data")
except mariadb.OperationalError: #Creating already existing table falls under OperationalError
    print("Something wrong with the connection")
except mariadb.ProgrammingError:
    print("Your query was wrong")
except mariadb.IntegrityError:
    print("Your query would have broken the database")
except ValueError:
    print("Please input a username")
except:
    print("Something went wrong")

finally:
    if (cursor != None):
        cursor.close()
    else:
        print("Cursor was never opened, nothing to close here.")
    if (conn != None):
        conn.close()
    else:
        print("Connection was never opened, nothing to close here.")