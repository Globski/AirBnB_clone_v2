# HBNB - The Console
![Python](https://img.shields.io/badge/language-python-blue.svg)
![HTML/CSS](https://img.shields.io/badge/language-HTML%2FCSS-orange.svg)
![JavaScript](https://img.shields.io/badge/language-JavaScript-yellow.svg)
![SQL](https://img.shields.io/badge/language-SQL-red.svg)

## Introduction
This repository contains the second version of the AirBnB clone project, which builds on the first version. This version includes an updated storage engine and improvements to the existing models.

## Objective

The goal is to improve the initial version of the AirBnB clone by adding new features and functionality. 

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

## Environment
- **Interpreter/Compiler:** Ubuntu 20.04 LTS
- **Python**: Version 3.8.5
- **Flask**: Version 2.x
- **SQLAlchemy**: Version 1.x

## Learning Objectives

By the end of this project, you should be able to:
- Implement unit testing in a large project.
- Use *args and **kwargs effectively.
- Handle named arguments in a function.
- Create a MySQL database and user with privileges.
- Understand ORM and map Python classes to MySQL tables.
- Handle multiple storage engines with the same codebase.
- Use environment variables in Python.

## Requirements
#### Python Scripts
- All your files will be interpreted/compiled on Ubuntu 20.04 LTS using python3 (version 3.8.5)
- All your files should end with a new line
- The first line of all your files should be exactly #!/usr/bin/python3
- Your code should use the pycodestyle (version 2.8.*)
- All your files must be executable
- The length of your files will be tested using wc
- All your modules should have documentation (python3 -c 'print(__import__("my_module").__doc__)')
- All your classes should have documentation (python3 -c 'print(__import__("my_module").MyClass.__doc__)')
- All your functions (inside and outside a class) should have documentation (python3 -c 'print(__import__("my_module").my_function.__doc__)' and python3 -c 'print(__import__("my_module").MyClass.my_function.__doc__)')
- A documentation is not a simple word, it’s a real sentence explaining what’s the purpose of the module, class or method (the length of it will be verified)

#### Python Unit Tests
- All your files should end with a new line
- All your test files should be inside a folder tests
- You have to use the unittest module
- All your test files should be python files (extension: .py)
- All your test files and folders should start by test_
- Your file organization in the tests folder should be the same as your project: ex: for models/base_model.py, unit tests must be in: tests/test_models/test_base_model.py
- All your tests should be executed by using this command: python3 -m unittest discover tests
- You can also test file by file by using this command: python3 -m unittest tests/test_models/test_base_model.py
- All your modules should have documentation (python3 -c 'print(__import__("my_module").__doc__)')
- All your classes should have documentation (python3 -c 'print(__import__("my_module").MyClass.__doc__)')
- All your functions (inside and outside a class) should have documentation (python3 -c 'print(__import__("my_module").my_function.__doc__)' and python3 -c 'print(__import__("my_module").MyClass.my_function.__doc__)')

#### SQL Scripts
- All your files will be executed on Ubuntu 20.04 LTS using MySQL 8.0
- Your files will be executed with SQLAlchemy version 1.4.x
- All your files should end with a new line
- All your SQL queries should have a comment just before (i.e. syntax above)
- All your files should start by a comment describing the task
- All SQL keywords should be in uppercase (SELECT, WHERE…)
- The length of your files will be tested using wc

#### Comments for your SQL file:
```sql
$ cat my_script.sql
-- first 3 students in the Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
$
```

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

#### 1. Creating an Object
To create a new user, use the `create` command:
```bash
(hbnb) create User email="bob@hbtn.io" password="bobpwd" first_name="Bob" last_name="Dylan"
```

#### 2. Showing an Object
To show the details of a specific User, use the `show` command with the class name and ID:
```bash
(hbnb) show User 1234-5678-9012
```

#### Show all User objects
Usage: <class_name>.all()
```
(hbnb) User.all()
["[User] (99f45908-1d17-46d1-9dd2-b7571128115b) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92071), 'id': '99f45908-1d17-46d1-9dd2-b7571128115b', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 34, 92056)}", "[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```

#### Destroying an Object
To delete a specific User, use the destroy command with the class name and ID:
```bash
(hbnb) destroy User 1234-5678-9012
```

#### Destroy a User
Usage: <class_name>.destroy(<_id>)
```
(hbnb) User.destroy("99f45908-1d17-46d1-9dd2-b7571128115b")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```

#### All Objects
To list all User, use the `all` command. You can list all objects of a specific class or all objects:
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

#### Update User (by attribute)
Usage: <class_name>.update(<_id>, <attribute_name>, <attribute_value>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", name "Todd the Toad")
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'name': 'Todd the Toad', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
```
#### Update User (by dictionary)
Usage: <class_name>.update(<_id>, <dictionary>)
```
(hbnb) User.update("98bea5de-9cb0-4d78-8a9d-c4de03521c30", {'name': 'Fred the Frog', 'age': 9})
(hbnb)
(hbnb) User.all()
(hbnb) ["[User] (98bea5de-9cb0-4d78-8a9d-c4de03521c30) {'updated_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134362), 'name': 'Fred the Frog', 'age': 9, 'id': '98bea5de-9cb0-4d78-8a9d-c4de03521c30', 'created_at': datetime.datetime(2020, 2, 19, 21, 47, 29, 134343)}"]
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

#### 1. Create an object
Usage: create <class_name>
```
(hbnb) create BaseModel
```
```
(hbnb) create BaseModel
3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb)                   
```
#### 2. Show an object
Usage: show <class_name> <_id>

```
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
[BaseModel] (3aa5babc-efb6-4041-bfe9-3cc9727588f8) {'id': '3aa5babc-efb6-4041-bfe9-3cc9727588f8', 'created_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96959), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 21, 12, 96971)}
(hbnb)  
```
#### 3. Destroy an object
Usage: destroy <class_name> <_id>
```
(hbnb) destroy BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
(hbnb) show BaseModel 3aa5babc-efb6-4041-bfe9-3cc9727588f8
** no instance found **
(hbnb)   
```
#### 4. Update an object
Usage: update <class_name> <_id>
```
(hbnb) update BaseModel b405fc64-9724-498f-b405-e4071c3d857f first_name "person"
(hbnb) show BaseModel b405fc64-9724-498f-b405-e4071c3d857f
[BaseModel] (b405fc64-9724-498f-b405-e4071c3d857f) {'id': 'b405fc64-9724-498f-b405-e4071c3d857f', 'created_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729889), 
'updated_at': datetime.datetime(2020, 2, 18, 14, 33, 45, 729907), 'first_name': 'person'}
(hbnb)
```

### Help Command

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

**Get Help for a Specific Command, type:**
```bash
(hbnb) help <command>
```

**For example, to get help for the `create` command:**
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

### Example Outputs for Help Commands
#### `EOF` Command
```bash
(hbnb) help EOF
EOF command to exit the program without formatting
Usage: EOF

(hbnb)
```

#### `all` Command
```bash
(hbnb) help all
Usage: all [class_name]
Retrieve all objects of the specified class if given, otherwise all objects.
Examples:
   all
   all User

(hbnb)
```

#### `create` Command
```bash
(hbnb) help create
Create a new instance of a class
Usage: create <class_name>
Example: create User

(hbnb)
```

#### `destroy` Command
```bash
(hbnb) help destroy
Deletes an instance based on the class name and id
Usage: destroy <class_name> <id>
Example: destroy User 1234-5678-9012

(hbnb)
```

#### `help` Command
```bash
(hbnb) help help
List available commands with "help" or detailed help with "help cmd".
Usage: help [command]

(hbnb)
```

#### `quit` Command
```bash
(hbnb) help quit
Quit command to exit the program
Usage: quit

(hbnb)
```

#### `show` Command
```bash
(hbnb) help show
Show an instance based on the class name and id
Usage: show <class_name> <id>
Example: show User 1234-5678-9012

(hbnb)
```

#### `update` Command
```bash
(hbnb) help update
Updates an instance based on the class name and id by adding or updating attribute
Usage: update <class_name> <id> <attribute_name> "<attribute_value>"
Example: update User 1234-5678-9012 email "bob@hbtn.io"
Example: update User 1234-5678-9012 age 89

(hbnb)
```

Setting Environment Variables for Database Use
If you are using MySQL for database storage, ensure the following environment variables are set before running the console:

```bash
export HBNB_MYSQL_USER=hbnb_dev
export HBNB_MYSQL_PWD=hbnb_dev_pwd
export HBNB_MYSQL_HOST=localhost
export HBNB_MYSQL_DB=hbnb_dev_db
export HBNB_TYPE_STORAGE=db
```

## Additional Note

### What is Unit Testing and How to Implement It in a Large Project?

**Unit testing** is the process of testing individual units or components of a software application in isolation to ensure that they function as expected. In Python, this is typically done using frameworks like `unittest` or `pytest`.

To implement unit testing in a large project:

1. **Create a test folder**: Organize your tests in a separate directory, like `/tests`, so they don’t interfere with your project code.
2. **Write test cases**: Use Python's `unittest` module to create test cases. A test case checks if a specific function or method returns the correct output.
3. **Mock dependencies**: In large projects, parts of the code may depend on external services or databases. Use mock objects to simulate those dependencies.
4. **Automate tests**: Use CI/CD tools like GitHub Actions, Jenkins, or Travis CI to automatically run tests when code changes.
5. **Run tests**: Run the tests using `python -m unittest` or `pytest` to check for correctness and reliability.

### What is `*args` and How to Use It?

`*args` allows a function to accept a variable number of positional arguments. It collects extra positional arguments passed to the function into a tuple.

Use `*args` when you don’t know how many arguments will be passed to your function in advance.

### What is `**kwargs` and How to Use It?

`**kwargs` allows a function to accept a variable number of keyword arguments (arguments provided by name). It collects them into a dictionary.

Use `**kwargs` when you want to handle named arguments dynamically.

### How to Handle Named Arguments in a Function

Named arguments are passed by explicitly specifying the argument name when calling a function. They are matched with the parameter names in the function definition.

#### Example:
```python
def person_info(name, age, city="Unknown"):
    print(f"Name: {name}, Age: {age}, City: {city}")

# Calling with named arguments
person_info(name="Alice", age=30, city="New York")
```

If you omit a default argument (`city` in this case), it uses the default value.

### How to Create a MySQL Database

To create a MySQL database, you can use the following steps:

1. **Log in to MySQL**: Open your terminal and type:
   ```bash
   mysql -u root -p
   ```
2. **Create the database**: Once logged in, create the database with:
   ```sql
   CREATE DATABASE database_name;
   ```

### How to Create a MySQL User and Grant It Privileges

1. **Create the user**:
   ```sql
   CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
   ```
2. **Grant privileges**: To grant all privileges on a database:
   ```sql
   GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
   ```
3. **Flush privileges**: This ensures changes take effect:
   ```sql
   FLUSH PRIVILEGES;
   ```

### What Does ORM Mean?

**ORM** stands for **Object-Relational Mapping**. It's a programming technique used to interact with a relational database (like MySQL) by representing database tables as Python classes and rows as objects.

With ORM, you don't write raw SQL queries; instead, you interact with the database through Python objects.

### How to Map a Python Class to a MySQL Table

In Python, you can map a class to a MySQL table using an ORM like SQLAlchemy. 


### How to Handle 2 Different Storage Engines with the Same Codebase

To handle multiple storage engines (e.g., FileStorage and DBStorage) in the same codebase, you can use a design pattern like **Dependency Injection** or **Factory Method**.

1. **Create a factory function** that initializes the appropriate storage engine based on the environment (e.g., whether the system is using a database or file system).
   
2. **Example**:
   ```python
   def storage_factory():
       if os.getenv("HBNB_TYPE_STORAGE") == "db":
           return DBStorage()
       else:
           return FileStorage()
   ```

3. **Use the factory function** to initialize the correct storage engine dynamically.

### How to Use Environment Variables

Environment variables are used to store configuration settings like passwords or API keys securely. In Python, you can access them using the `os` module.

1. **Setting an environment variable** (in Linux/Mac terminal):
   ```bash
   export VAR_NAME=value
   ```

2. **Accessing the variable in Python**:
   ```python
   import os
   value = os.getenv("VAR_NAME")
   ```

   This allows you to securely access sensitive information (like database credentials) without hardcoding them into your codebase.


## Authors 
- [Gloria Ogunsemore](https://github.com/globski)
- [Maxwell Duedu](BaduDueduMaxwell)
- Ezra Nobrega
- Justin Majetich

## License
This project is licensed under the [MIT License](LICENSE).
