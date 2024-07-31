# HBNB - The Console
![Python](https://img.shields.io/badge/language-python-blue.svg)
![HTML/CSS](https://img.shields.io/badge/language-HTML%2FCSS-orange.svg)
![JavaScript](https://img.shields.io/badge/language-JavaScript-yellow.svg)
![SQL](https://img.shields.io/badge/language-SQL-red.svg)

## Introduction
This repository contains the second version of the AirBnB clone project. This version includes an updated storage engine and improvements to the existing models.

## Objective

The objective is to improve upon the initial version by implementing additional features and functionality.

## Project Structure

| Task | Description | Source Code |
|------|-------------|-------------|
| 1. Unit Testing | Add unit tests for the models and storage | [tests/](tests/) |
| 2. Console Improvements | Update the console to handle new commands and functionality | [console.py](console.py) |
| 3. DBStorage - States and Cities | Update the `State` and `City` models for database storage | [models/state.py](models/state.py), [models/city.py](models/city.py) |
| 4. DBStorage - User | Update the `User` model for database storage | [models/user.py](models/user.py) |
| 5. DBStorage - Place | Update the `Place` model for database storage | [models/place.py](models/place.py) |
| 6. DBStorage - Review | Update the `Review` model for database storage | [models/review.py](models/review.py) |
| 7. DBStorage - Amenity | Update the `Amenity` model for database storage | [models/amenity.py](models/amenity.py) |
| 8. Update User | Add a relationship between `User` and `Review` models | [models/user.py](models/user.py) |
| 9. Update Place | Add a relationship between `Place` and `Review` models | [models/place.py](models/place.py) |
| 10. DBStorage - Place Amenities | Implement a many-to-many relationship between `Place` and `Amenity` | [models/place.py](models/place.py), [models/amenity.py](models/amenity.py) |

## Features
- Configure environment variables.
- Set up MySQL database and user.
- Implement file storage (FileStorage).
- Implement database storage (DBStorage) using SQLAlchemy.
- Write unit tests for all modules, classes, and functions.
- Map Python classes to MySQL tables using SQLAlchemy.
- Handle relationships between tables.
- Integrate storage engines with the main application.
- Test the application in different environments (dev and test).
- Write SQL scripts for various database operations.

### Learning Objectives
By the end of this project, you should be able to:
1. Implement unit testing in a large project.
2. Use *args and **kwargs effectively.
3. Handle named arguments in a function.
4. Create a MySQL database and user with privileges.
5. Understand ORM and map Python classes to MySQL tables.
6. Handle multiple storage engines with the same codebase.
7. Use environment variables in Python.

### Requirements
#### Python Scripts
- **Interpreter/Compiler:** Ubuntu 20.04 LTS, Python 3.8.5
-  **File Structure:** files must end with a new line
- **Code Style:** pycodestyle 2.8.*
- **Testing:** unittest module, tests organized in `tests` folder, executable via `python3 -m unittest discover tests`

#### SQL Scripts
- **Execution:** Ubuntu 20.04 LTS, MySQL 8.0, SQLAlchemy 1.4.x
- **File Structure:** files must end with a new line, SQL keywords in uppercase.

## Command Interpreter
The console is a command-line interface (CLI) tool that allows users to interact with the backend of the AirBnB Clone project. It provides an interface to create, retrieve, update, and delete various objects in the system, including users, places, cities, states, amenities, and reviews. This is essential for developers to test and manage the application's data.

It supports the following functionalities:
- create - Creates an instance based on given class
- destroy - Destroys an object based on class and UUID
- show - Shows an object based on class and UUID
- all - Shows all objects the program has access to, or all objects of a given class
- update - Updates existing attributes an object based on class name and UUID
- quit - Exits the program (EOF will as well)

## How to Use

### Setup the Environment:
Ensure you have Python 3 and MySQL installed. Install required Python packages:

```bash
pip install -r requirements.txt
```

### Running the Console
To run the console, use:

```bash
$ ./console.py
```

### Start the Console:
Launch the console by running the command above. When this command is run the following prompt should appear:
```
(hbnb)
```

### Examples of Basic Actions Using the Console

#### Creating an Object
To create a new user:
```bash
(hbnb) create User email="bob@hbtn.io" password="bobpwd" first_name="Bob" last_name="Dylan"
```

#### Showing an Object
To show the details of a specific user:
```bash
(hbnb) show User 1234-5678-9012
```

#### Destroying an Object
To delete a specific user:
```bash
(hbnb) destroy User 1234-5678-9012
```

#### All Objects
To list all objects of all classes:
```bash
(hbnb) all
```

To list all objects of a specific class:
```bash
(hbnb) all User
```

#### Updating an Object
To update a specific user's email:
```bash
(hbnb) update User 1234-5678-9012 email "alice@hbtn.io"
```

To update a specific user's age:
```bash
(hbnb) update User 1234-5678-9012 age 30
```

### Alternative Syntax
Users are able to issue a number of console command using an alternative syntax:

***Usage: <class_name>.<command>([<id>[name_arg value_arg]|[kwargs]])***

Advanced syntax is implemented for the following commands: 

- all - Shows all objects the program has access to, or all objects of a given class
- count - Return number of object instances by class
- show - Shows an object based on class and UUID
- destroy - Destroys an object based on class and UUID
- update - Updates existing attributes an object based on class name and UUID

#### Example 0: Create an object
Usage: create <class_name>
```
(hbnb) create BaseModel
```
```
(hbnb) create BaseModel
3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb)                   
```
#### Example 1: Show an object
Usage: show <class_name> <_id>

```
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
[BaseModel] (3aa5babc-efb6-4041-bfe9-3cc9727588f8) {'id': '3aa5babc-efb6-4041-bfe9-3cc9727588f8', 'created_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96959), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96971)}
(hbnb)  
```
#### Example 2: Destroy an object
Usage: destroy <class_name> <_id>
```
(hbnb) destroy BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
** no instance found **
(hbnb)   
```
#### Example 3: Update an object
Usage: update <class_name> <_id>
```
(hbnb) update BaseModel b405fc64-9724-498f-b405-e4071c3d857f first_name "person"
(hbnb) show BaseModel b405fc64-9724-498f-b405-e4071c3d857f
[BaseModel] (b405fc64-9724-498f-b405-e4071c3d857f) {'id': 'b405fc64-9724-498f-b405-e4071c3d857f', 'created_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729889), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729907), 'first_name': 'person'}
(hbnb)
```

### Alternative Syntax

#### Example 0: Show all User objects
Usage: <class_name>.all()
```
(hbnb) User.all()
["[User] (99f45908-1d17-46d1-9dd2-b7571128115b) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92071), 'id': '99f45908-1d17-46d1-9dd2-b7571128115b', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92056)}", "[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```

#### Example 1: Destroy a User
Usage: <class_name>.destroy(<_id>)
```
(hbnb) User.destroy("99f45908-1d17-46d1-9dd2-b7571128115b")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
#### Example 2: Update User (by attribute)
Usage: <class_name>.update(<_id>, <attribute_name>, <attribute_value>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", name "Todd the Toad")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'name': 'Todd the Toad', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
#### Example 3: Update User (by dictionary)
Usage: <class_name>.update(<_id>, <dictionary>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", {'name': 'Fred the Frog', 'age': 9})
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'name': 'Fred the Frog', 'age': 9, 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```

### help feature

#### Using the `help` Command

**Get Help for All Commands:**
   To get a list of all available commands and a brief description of each, simply type:
   ```bash
   (hbnb) help
   ```

   Example output:
   ```bash
   (hbnb) help

   Documented commands (type help <topic>):
   ========================================
   EOF  all  create  destroy  help  quit  show  update

   (hbnb)
   ```

**Get Help for a Specific Command:**
   To get detailed information about a specific command, type `help <command>`. For example, to get help for the `create` command:
   ```bash
   (hbnb) help create
   ```

   Example output:
   ```bash
   (hbnb) help create
   Create a new instance of a class
   Usage: create <class_name>
   Example: create User

   (hbnb)
   ```

### Examples for All Help Commands

#### `EOF`
```bash
(hbnb) help EOF
EOF command to exit the program without formatting
Usage: EOF

(hbnb)
```

#### `all`
```bash
(hbnb) help all
Usage: all [class_name]
Retrieve all objects of the specified class if given, otherwise all objects.
Examples:
   all
   all User

(hbnb)
```

#### `create`
```bash
(hbnb) help create
Create a new instance of a class
Usage: create <class_name>
Example: create User

(hbnb)
```

#### `destroy`
```bash
(hbnb) help destroy
Deletes an instance based on the class name and id
Usage: destroy <class_name> <id>
Example: destroy User 1234-5678-9012

(hbnb)
```

#### `help`
```bash
(hbnb) help help
List available commands with "help" or detailed help with "help cmd".
Usage: help [command]

(hbnb)
```

#### `quit`
```bash
(hbnb) help quit
Quit command to exit the program
Usage: quit

(hbnb)
```

#### `show`
```bash
(hbnb) help show
Show an instance based on the class name and id
Usage: show <class_name> <id>
Example: show User 1234-5678-9012

(hbnb)
```

#### `update`
```bash
(hbnb) help update
Updates an instance based on the class name and id by adding or updating attribute
Usage: update <class_name> <id> <attribute_name> "<attribute_value>"
Example: update User 1234-5678-9012 email "bob@hbtn.io"
Example: update User 1234-5678-9012 age 89

(hbnb)
```

## Additional Note

Ensure you have the correct environment variables set up before running the console, especially if you are using MySQL for database storage. For example:

```bash
export HBNB_MYSQL_USER=hbnb_dev
export HBNB_MYSQL_PWD=hbnb_dev_pwd
export HBNB_MYSQL_HOST=localhost
export HBNB_MYSQL_DB=hbnb_dev_db
export HBNB_TYPE_STORAGE=db
```

## Authors 
- [Gloria Ogunsemore](https://github.com/globski)
- [Maxwell Duedu](BaduDueduMaxwell)
- Ezra Nobrega
- Justin Majetich

## License
This project is licensed under the [MIT License](LICENSE).
