# HBNB - The Console
![Python](https://img.shields.io/badge/language-python-blue.svg)
![HTML/CSS](https://img.shields.io/badge/language-HTML%2FCSS-orange.svg)
![JavaScript](https://img.shields.io/badge/language-JavaScript-yellow.svg)
![SQL](https://img.shields.io/badge/language-SQL-red.svg)

## Introduction
This repository contains the second version of the AirBnB clone project. This version includes an updated storage engine and improvements to the existing models.

## Objective

The objective is to improve upon the initial version by implementing additional features and functionality. This involves creating a web framework using Flask which includes setting up routes, templates, static files, and integrating with SQLAlchemy for database management.

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

| Task | Description | Source Code |
|-----------------------------------|------------------------------------------------------|-----------------------------------------------|
| 0. Basic Flask Application | Create a basic Flask application that listens on `0.0.0.0`, port `5000`. Define a route `/` that returns “Hello HBNB!”. Create a template directory with a basic HTML file that displays “Hello HBNB!”. Use the `render_template` function to render the HTML file. | [Source Code](#) |
| 1. Dynamic Routes | Define a route `/hbnb` that returns “HBNB” and a route `/c/<text>` that returns “C ” followed by the value of `<text>` (replace `_` with space). | [Source Code](#) |
| 2. Error Handling | Define a route `/number/<int:n>` that returns “n is a number” if `<n>` is an integer, otherwise it should return “Not a number”. | [Source Code](#) |
| 3. Templates | Create a template to display “Hello HBNB!” when visiting the root route. Use Jinja2 templates to render dynamic content. Define a template that displays “C ” followed by the value of `<text>` for the route `/c/<text>`. | [Source Code](#) |
| 4. Static Files | Create a directory for static files (CSS, JS, etc.). Define a route `/static/<path:filename>` that serves static files from the static directory. | [Source Code](#) |
| 5. Web Framework Integration | Implement the integration of Flask with SQLAlchemy. Create models for your data (e.g., `User`, `State`, `City`, `Amenity`, etc.). Implement CRUD operations using SQLAlchemy. | [Source Code](#) |
| 6. API Documentation | Document your API endpoints with appropriate documentation. Ensure that all routes have clear descriptions and usage examples. | [Source Code](#) |
| 7. Testing | Write test cases for your application to ensure it works as expected. Use a testing framework (e.g., `unittest`, `pytest`) to automate testing. | [Source Code](#) |
| 8. Deployment | Prepare your application for deployment on a production server. Configure your application to use a production-ready server (e.g., Gunicorn) and set up environment variables for production. | [Source Code](#) |
| 9. Continuous Integration | Set up CI/CD pipelines to automate testing and deployment processes. Ensure that your application is tested and deployed automatically on each commit. | [Source Code](#) |
| 10. Database Setup | Set up a database for your application. Configure your application to connect to the database and perform operations. | [Source Code](#) |
| 11. User Authentication | Implement user authentication and authorization. Create login and registration routes and manage user sessions. | [Source Code](#) |
| 12. Advanced Features | Implement advanced features such as pagination, search functionality, or file uploads. Enhance your application with additional features that improve user experience. | [Source Code](#) |

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
___
- Develop a web application using Flask, Set up routing, handling variables in routes, and rendering templates.
- Create and use templates with Jinja2 for rendering HTML with dynamic content.
- Define routes in Flask to handle incoming requests and direct them to appropriate view functions.
- Implement various HTTP methods (GET, POST, etc.) to interact with users and manage data.
- Use templates to generate dynamic HTML content based on data passed from Flask routes.
- Connect Flask application to a MySQL database to manage and store data.
- Implement SQLAlchemy to interact with the database, perform CRUD (Create, Read, Update, Delete) operations, and manage database models.

### Learning Objectives
By the end of this project, you should be able to:
- Implement unit testing in a large project.
- Use *args and **kwargs effectively.
- Handle named arguments in a function.
- Create a MySQL database and user with privileges.
- Understand ORM and map Python classes to MySQL tables.
- Handle multiple storage engines with the same codebase.
- Use environment variables in Python.
___
- Understanding Flask and how to build web applications with it.
- Learning how to integrate Flask with SQLAlchemy for database operations.
- Implementing web frameworks and deploying applications.
- Writing tests and setting up CI/CD pipelines.
- What is a Web Framework
- How to build a web framework with Flask
- How to define routes in Flask
- What is a route
- How to handle variables in a route
- What is a template
- How to create a HTML response in Flask by using a template
- How to create a dynamic template (loops, conditions…)
- How to display in HTML data from a MySQL database

## Environment
- **Interpreter/Compiler:** Ubuntu 20.04 LTS
- **Python**: Version 3.8.5
- **Flask**: Version 2.x
- **SQLAlchemy**: Version 1.x 

## Requirements
#### Python Scripts
-  **File Structure:** files must end with a new line
- **Code Style:** pycodestyle 2.8.*
- **Testing:** unittest module, tests organized in `tests` folder, executable via `python3 -m unittest discover tests`

#### SQL Scripts
- **Execution:** Ubuntu 20.04 LTS, MySQL 8.0, SQLAlchemy 1.4.x
- **File Structure:** files must end with a new line, SQL keywords in uppercase.
___
- `Flask`
- `SQLAlchemy`
- `pytest` (for testing)

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
