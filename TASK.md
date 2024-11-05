# Tasks

## 0. Fork me if you can!

In the industry, you will work on an existing codebase 90% of the time. Your first thoughts upon looking at it might include:

- “Who did this code?”
- “How it works?”
- “Where are unittests?”
- “Where is this?”
- “Why did they do that like this?”
- “I don’t understand anything.”
- “… I will refactor everything…”

But the worst thing you could possibly do is to redo everything. Please don’t do that! Note: the existing codebase might be perfect, or it might have errors. Don’t always trust the existing codebase!

For this project you will fork this [codebase](https://github.com/justinmajetich/AirBnB_clone):

- update the repository name to **AirBnB_clone_v2**
- update the **README.md** with your information but don’t delete the initial authors
- If you are the owner of this repository, please create a new repository named **AirBnB_clone_v2** with the same content of **AirBnB_clone**


### Repo:

GitHub repository: **AirBnB_clone_v2**  

---

## 1. Bug free!

Do you remember the `unittest` module?

This codebase contains many test cases. Some are missing, but the ones included cover the basic functionality of the program.

```
guillaume@ubuntu:~/AirBnB_v2$ python3 -m unittest discover tests 2>&1 /dev/null | tail -n 1
OK
guillaume@ubuntu:~/AirBnB_v2$ 
```

All your unittests must pass without any errors at anytime in this project, with each storage engine! Same for PEP8!

```
guillaume@ubuntu:~/AirBnB_v2$ HBNB_ENV=test HBNB_MYSQL_USER=hbnb_test HBNB_MYSQL_PWD=hbnb_test_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_test_db HBNB_TYPE_STORAGE=db python3 -m unittest discover tests 2>&1 /dev/null | tail -n 1
OK
guillaume@ubuntu:~/AirBnB_v2$ 
```

Some tests won’t be relevant for some type of storage, please skip them by using the `skipIf` feature of the `Unittest` module - 26.3.6. Skipping tests and expected failures. Of [the Unittest module - 26.3.6. Skipping tests and expected failures.](https://docs.python.org/3/library/unittest.html#skipping-tests-and-expected-failures) Of course, the number of tests must be higher than the current number of tests, so if you decide to skip a test, you should write a new test!

### How to test with MySQL?
1. First, you create a specific database for it (next tasks).
2. After, you have to remember what the purpose of a unittest:

   “Assert a current state (objects/data/database), do an action, and validate this action changed (or not) the state of your objects/data/database”

For example, “you want to validate that the `create State name="California"` command in the console will add a new record in your table states in your database”. Here are the steps for your unittest:

1. Get the number of current records in the table `states` (by using `MySQLdb` for example - but not SQLAlchemy, because you want to test if it works, so it’s better to isolate from the system).
2. Execute the console command.
3. Get (again) the number of current records in the table `states` (same method, with `MySQLdb`).
4. If the difference is `+1` => test passed.

### Repo:

GitHub repository: **AirBnB_clone_v2**  

---

## 2. Console improvements

Update the `def do_create(self, arg):` function of your command interpreter (`console.py`) to allow for object creation with given parameters:

### Command Syntax:
```
create <Class name> <param 1> <param 2> <param 3>...
```

### Param Syntax:
```
<key name>=<value>
```

### Value Syntax:
- **String:** `"value"` => starts with a double quote
    - Any double quote inside the value must be escaped with a backslash `\`
    - All underscores `_` must be replaced by spaces. Example: `name="My_little_house"` will set the attribute `name` to `"My little house"`.
- **Float:** `<unit>.<decimal>` => contains a dot `.`
- **Integer:** `<number>` => default case

If any parameter doesn’t fit these requirements or can’t be recognized correctly by your program, it must be skipped.

### Don’t forget to add tests for this new feature!

Also, this new feature will be tested here only with the **FileStorage** engine.

### Example commands:
```
guillaume@ubuntu:~/AirBnB_v2$ cat test_params_create
create State name="California"
create State name="Arizona"
all State

create Place city_id="0001" user_id="0001" name="My_little_house" number_rooms=4 number_bathrooms=2 max_guest=10 price_by_night=300 latitude=37.773972 longitude=-122.431297
all Place
guillaume@ubuntu:~/AirBnB_v2$ cat test_params_create | ./console.py 
(hbnb) d80e0344-63eb-434a-b1e0-07783522124e
(hbnb) 092c9e5d-6cc0-4eec-aab9-3c1d79cfc2d7
(hbnb) [[State] (d80e0344-63eb-434a-b1e0-07783522124e) {'id': 'd80e0344-63eb-434a-b1e0-07783522124e', 'created_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 842160), 'updated_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 842235), 'name': 'California'}, [State] (092c9e5d-6cc0-4eec-aab9-3c1d79cfc2d7) {'id': '092c9e5d-6cc0-4eec-aab9-3c1d79cfc2d7', 'created_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 842779), 'updated_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 842792), 'name': 'Arizona'}]
(hbnb) (hbnb) 76b65327-9e94-4632-b688-aaa22ab8a124
(hbnb) [[Place] (76b65327-9e94-4632-b688-aaa22ab8a124) {'number_bathrooms': 2, 'longitude': -122.431297, 'city_id': '0001', 'user_id': '0001', 'latitude': 37.773972, 'price_by_night': 300, 'name': 'My little house', 'id': '76b65327-9e94-4632-b688-aaa22ab8a124', 'max_guest': 10, 'number_rooms': 4, 'updated_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 843774), 'created_at': datetime.datetime(2017, 11, 10, 4, 41, 7, 843747)}]
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$
```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
File: **console.py**, **models/**, **tests/**

---

## 3. MySQL setup development

Write a script that prepares a MySQL server for the project:

- Create a database `hbnb_dev_db`.
- Create a new user `hbnb_dev` (in `localhost`).
- Set the password of `hbnb_dev` to `hbnb_dev_pwd`.
- Grant `hbnb_dev` all privileges on the database `hbnb_dev_db` (and only this database).
- Grant `hbnb_dev` `SELECT` privilege on the database `performance_schema` (and only this database).

### Requirements:
- If the database `hbnb_dev_db` or the user `hbnb_dev` already exists, your script should not fail.

### Example of running the script:
```
guillaume@ubuntu:~/AirBnB_v2$ cat setup_mysql_dev.sql | mysql -hlocalhost -uroot -p
Enter password: 
guillaume@ubuntu:~/AirBnB_v2$ echo "SHOW DATABASES;" | mysql -uhbnb_dev -p | grep hbnb_dev_db
Enter password: 
hbnb_dev_db
guillaume@ubuntu:~/AirBnB_v2$ echo "SHOW GRANTS FOR 'hbnb_dev'@'localhost';" | mysql -uroot -p
Enter password: 
Grants for hbnb_dev@localhost
GRANT USAGE ON *.* TO 'hbnb_dev'@'localhost'
GRANT SELECT ON `performance_schema`.* TO 'hbnb_dev'@'localhost'
GRANT ALL PRIVILEGES ON `hbnb_dev_db`.* TO 'hbnb_dev'@'localhost'
guillaume@ubuntu:~/AirBnB_v2$ 
```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
File: **setup_mysql_dev.sql**

---

## 4. MySQL setup test

Write a script that prepares a MySQL server for the project:

- Create a database `hbnb_test_db`.
- Create a new user `hbnb_test` (in `localhost`).
- Set the password of `hbnb_test` to `hbnb_test_pwd`.
- Grant `hbnb_test` all privileges on the database `hbnb_test_db` (and only this database).
- Grant `hbnb_test` `SELECT` privilege on the database `performance_schema` (and only this database).

### Requirements:
- If the database `hbnb_test_db` or the user `hbnb_test` already exists, your script should not fail.

### Example of running the script:
```
guillaume@ubuntu:~/AirBnB_v2$ cat setup_mysql_test.sql | mysql -hlocalhost -uroot -p
Enter password: 
guillaume@ubuntu:~/AirBnB_v2$ echo "SHOW DATABASES;" | mysql -uhbnb_test -p | grep hbnb_test_db
Enter password: 
hbnb_test_db
guillaume@ubuntu:~/AirBnB_v2$ echo "SHOW GRANTS FOR 'hbnb_test'@'localhost';" | mysql -uroot -p
Enter password: 
Grants for hbnb_test@localhost
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost'
GRANT SELECT ON `performance_schema`.* TO 'hbnb_test'@'localhost'
GRANT ALL PRIVILEGES ON `hbnb_test_db`.* TO 'hbnb_test'@'localhost'
guillaume@ubuntu:~/AirBnB_v2$ 
```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
File: **setup_mysql_test.sql**

---

## 5. Delete object

Update **FileStorage** (`models/engine/file_storage.py`):

- Add a new public instance method: `def delete(self, obj=None):` to delete `obj` from `__objects` if it’s inside. If `obj` is equal to `None`, the method should not do anything.

- Update the prototype of `def all(self)` to `def all(self, cls=None)` so that it returns the list of objects of one type of class. Example below with `State` — this should be an optional filtering.

### Example Script for Testing:

```python
guillaume@ubuntu:~/AirBnB_v2$ cat main_delete.py
#!/usr/bin/python3
""" Test delete feature
"""
from models.engine.file_storage import FileStorage
from models.state import State

fs = FileStorage()

# All States
all_states = fs.all(State)
print("All States: {}".format(len(all_states.keys())))
for state_key in all_states.keys():
    print(all_states[state_key])

# Create a new State
new_state = State()
new_state.name = "California"
fs.new(new_state)
fs.save()
print("New State: {}".format(new_state))

# All States
all_states = fs.all(State)
print("All States: {}".format(len(all_states.keys())))
for state_key in all_states.keys():
    print(all_states[state_key])

# Create another State
another_state = State()
another_state.name = "Nevada"
fs.new(another_state)
fs.save()
print("Another State: {}".format(another_state))

# All States
all_states = fs.all(State)
print("All States: {}".format(len(all_states.keys())))
for state_key in all_states.keys():
    print(all_states[state_key])        

# Delete the new State
fs.delete(new_state)

# All States
all_states = fs.all(State)
print("All States: {}".format(len(all_states.keys())))
for state_key in all_states.keys():
    print(all_states[state_key])
```

### Example of running the script:
```
guillaume@ubuntu:~/AirBnB_v2$ ./main_delete.py
All States: 0
New State: [State] (b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce) {'name': 'California', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 32, 561137), 'id': 'b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce'}
All States: 1
[State] (b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce) {'name': 'California', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 32, 561137), 'id': 'b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce'}
Another State: [State] (37705d25-8903-4318-9303-6d6d336a22c1) {'name': 'Nevada', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 34, 619133), 'id': '37705d25-8903-4318-9303-6d6d336a22c1'}
All States: 2
[State] (b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce) {'name': 'California', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 32, 561137), 'id': 'b0026fc6-116f-4d1a-a9cb-6bb9b299f1ce'}
[State] (37705d25-8903-4318-9303-6d6d336a22c1) {'name': 'Nevada', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 34, 619133), 'id': '37705d25-8903-4318-9303-6d6d336a22c1'}
All States: 1
[State] (37705d25-8903-4318-9303-6d6d336a22c1) {'name': 'Nevada', 'created_at': datetime.datetime(2017, 11, 10, 1, 13, 34, 619133), 'id': '37705d25-8903-4318-9303-6d6d336a22c1'}
```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
File: **models/engine/file_storage.py**

---

## 6. DBStorage - States and Cities

SQLAlchemy will be your best friend!

It’s time to change your storage engine and use SQLAlchemy.

![daaef631636b40e0a279a8f240703e065f9d3481](https://github.com/user-attachments/assets/0b58bb73-8e01-4bf7-b79b-0c71b5c016e5)


In the following steps, you will make multiple changes:

- The biggest one is the transition between FileStorage and DBStorage: In the industry, you will never find a system that can work with both in the same time, but you will find many services that manage multiple storage systems. (For example, logs service: in-memory, on disk, in a database, in Elasticsearch, etc…) The main concept is abstraction — make your code run without knowing how it’s stored.
- add attributes for SQLAlchemy: they will be class attributes, like previously, with a “weird” value. Don’t worry, these values are for description and mapping to the database. If you change one of these values, or add/remove one attribute of the a model, you will have to delete the database and recreate it in SQL. (Yes it’s not optimal, but for development purposes, it’s ok. In production, we will add “migration mechanism” - for the moment, don’t spend time on it.)

### Steps:

#### Update **BaseModel** (`models/base_model.py`):

- **Create Base = declarative_base()** before the class definition of `BaseModel`.
  - Note: `BaseModel` does **not** inherit from `Base`. All other classes will inherit from `BaseModel` to get common values (id, created_at, updated_at). Inheriting from `Base` will cause SQLAlchemy to map the class to a table.

- Add or replace the following class attributes in **BaseModel**:
  - `id`: represents a column containing a unique string (60 characters). It can’t be `null` and should be the primary key.
  - `created_at`: represents a column containing a `datetime`. It can’t be `null` and defaults to the current datetime (use `datetime.utcnow()`).
  - `updated_at`: represents a column containing a `datetime`. It can’t be `null` and defaults to the current datetime (use `datetime.utcnow()`).

- Move the `models.storage.new(self)` from `def __init__(self, *args, **kwargs):` to `def save(self):` and call it just before `models.storage.save()`.

- In `def __init__(self, *args, **kwargs):`, manage `kwargs` to create instance attributes from the dictionary. Example: `kwargs = {'name': "California"}` would result in `self.name = "California"` if it’s not already the case.

- Update the `to_dict()` method of the class `BaseModel`:
  - Remove the key `_sa_instance_state` from the dictionary returned by this method if it exists.

- Add a new public instance method: `def delete(self):` to delete the current instance from the storage (`models.storage`) by calling the method `delete`.

#### Update **City** (`models/city.py`):

- `City` inherits from `BaseModel` and `Base` (respect the order).

- Add or replace the following class attributes in **City**:
  - `__tablename__`: represents the table name (`cities`).
  - `name`: represents a column containing a string (128 characters). It can’t be `null`.
  - `state_id`: represents a column containing a string (60 characters). It can’t be `null` and is a foreign key to `states.id`.

#### Update **State** (`models/state.py`):

- `State` inherits from `BaseModel` and `Base` (respect the order).

- Add or replace the following class attributes in **State**:
  - `__tablename__`: represents the table name (`states`).
  - `name`: represents a column containing a string (128 characters). It can’t be `null`.
  
- For **DBStorage**:
  - `class attribute cities` must represent a relationship with the class `City`. If a `State` object is deleted, all linked `City` objects must be automatically deleted. The reference from a `City` object to its `State` should be named `state`.

- For **FileStorage**:
  - The getter attribute `cities` should return the list of `City` instances where `state_id` equals the current `State.id`. This will represent the relationship between `State` and `City` in **FileStorage**.

#### New engine **DBStorage** (`models/engine/db_storage.py`):

- Private class attributes:
  - `__engine`: set to `None`.
  - `__session`: set to `None`.

- Public instance methods:
  - `__init__(self)`:
    - Create the engine (`self.__engine`).
    - The engine must be linked to the MySQL database and user created before (`hbnb_dev` and `hbnb_dev_db`).
    - The following values must be retrieved via environment variables:
      - MySQL user: `HBNB_MYSQL_USER`
      - MySQL password: `HBNB_MYSQL_PWD`
      - MySQL host: `HBNB_MYSQL_HOST` (set to `localhost` here)
      - MySQL database: `HBNB_MYSQL_DB`
    - Don’t forget the option `pool_pre_ping=True` when calling `create_engine`.
    - Drop all tables if the environment variable `HBNB_ENV` is equal to `test`.

  - `all(self, cls=None)`:
    - Query the current database session (`self.__session`) for all objects of the class type `cls`.
    - If `cls=None`, query all types of objects (`User`, `State`, `City`, `Amenity`, `Place`, and `Review`).
    - This method must return a dictionary, similar to **FileStorage**:
      - Key = `<class-name>.<object-id>`
      - Value = object.

  - `new(self, obj)`:
    - Add the object to the current database session (`self.__session`).

  - `save(self)`:
    - Commit all changes in the current database session (`self.__session`).

  - `delete(self, obj=None)`:
    - Delete the object from the current database session if it is not `None`.

  - `reload(self)`:
    - Create all tables in the database (feature of SQLAlchemy).
    - Create the current database session (`self.__session`) from the engine (`self.__engine`) using `sessionmaker`. Set the option `expire_on_commit=False` and `scoped_session` to ensure thread safety.

#### Update **__init__.py** (`models/__init__.py`):

- Add a conditional depending on the value of the environment variable `HBNB_TYPE_STORAGE`:
  - If `HBNB_TYPE_STORAGE` is equal to `db`, import the `DBStorage` class and create an instance of it. Store it in the variable `storage`, and execute `storage.reload()`.
  - Otherwise, import the `FileStorage` class, create an instance of it, and store it in the variable `storage`. Execute `storage.reload()`.

This “switch” will allow you to change the storage type directly by modifying the `HBNB_TYPE_STORAGE` environment variable.

```bash
echo 'SELECT * FROM cities\G' | mysql -uhbnb_dev -p hbnb_dev_db
```

```bash
guillaume@ubuntu:~/AirBnB_v2$ echo 'create State name="California"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py 
(hbnb) 95a5abab-aa65-4861-9bc6-1da4a36069aa
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$ 
guillaume@ubuntu:~/AirBnB_v2$ echo 'all State' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py 
(hbnb) [[State] (95a5abab-aa65-4861-9bc6-1da4a36069aa) {'name': 'California', 'id': '95a5abab-aa65-4861-9bc6-1da4a36069aa', 'updated_at': datetime.datetime(2017, 11, 10, 0, 49, 54), 'created_at': datetime.datetime(2017, 11, 10, 0, 49, 54)}]
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$ 
guillaume@ubuntu:~/AirBnB_v2$ echo 'SELECT * FROM states\G' | mysql -uhbnb_dev -p hbnb_dev_db
Enter password: 
*************************** 1. row ***************************
        id: 95a5abab-aa65-4861-9bc6-1da4a36069aa
created_at: 2017-11-10 00:49:54
updated_at: 2017-11-10 00:49:54
      name: California
guillaume@ubuntu:~/AirBnB_v2$ 
```

### Example of Creating State and City:

1. Create a **State**:
   ```bash
   echo 'create State name="California"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

2. View the created State:
   ```bash
   echo 'all State' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

```bash
guillaume@ubuntu:~/AirBnB_v2$ echo 'create City state_id="95a5abab-aa65-4861-9bc6-1da4a36069aa" name="San_Francisco"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
(hbnb) 4b457e66-c7c8-4f63-910f-fd91c3b7140b
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$ 
guillaume@ubuntu:~/AirBnB_v2$ echo 'all City' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py 
(hbnb) [[City] (4b457e66-c7c8-4f63-910f-fd91c3b7140b) {'id': '4b457e66-c7c8-4f63-910f-fd91c3b7140b', 'updated_at': datetime.datetime(2017, 11, 10, 0, 52, 53), 'state_id': '95a5abab-aa65-4861-9bc6-1da4a36069aa', 'name': 'San Francisco', 'created_at': datetime.datetime(2017, 11, 10, 0, 52, 53)]
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$ 
```

3. Create a **City**:
   ```bash
   echo 'create City state_id="95a5abab-aa65-4861-9bc6-1da4a36069aa" name="San_Francisco"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

4. View the created City:
   ```bash
   echo 'all City' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

```bash
guillaume@ubuntu:~/AirBnB_v2$ echo 'create City state_id="95a5abab-aa65-4861-9bc6-1da4a36069aa" name="San_Jose"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
(hbnb) a7db3cdc-30e0-4d80-ad8c-679fe45343ba
(hbnb)
guillaume@ubuntu:~/AirBnB_v2$ 
guillaume@ubuntu:~/AirBnB_v2$ echo 'SELECT * FROM cities\G' | mysql -uhbnb_dev -p hbnb_dev_db
Enter password: 
*************************** 1. row ***************************
        id: 4b457e66-c7c8-4f63-910f-fd91c3b7140b
created_at: 2017-11-10 00:52:53
updated_at: 2017-11-10 00:52:53
      name: San Francisco
  state_id: 95a5abab-aa65-4861-9bc6-1da4a36069aa
*************************** 2. row ***************************
        id: a7db3cdc-30e0-4d80-ad8c-679fe45343ba
created_at: 2017-11-10 00:53:19
updated_at: 2017-11-10 00:53:19
      name: San Jose
  state_id: 95a5abab-aa65-4861-9bc6-1da4a36069aa
guillaume@ubuntu:~/AirBnB_v2$
```

### Example of Viewing Data in MySQL:
```bash
echo 'SELECT * FROM states\G' | mysql -uhbnb_dev -p hbnb_dev_db
```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
Files to modify: **models/base_model.py**, **models/city.py**, **models/state.py**, **models/engine/db_storage.py**, **models/__init__.py**

---

# Task 7: DBStorage - User

### Update **User** (`models/user.py`):

- **User** should inherit from both `BaseModel` and `Base` (in this order).

- Add or replace the following class attributes in **User**:
  - `__tablename__`: Represents the table name (`users`).
  - `email`: Represents a column containing a string (128 characters). It can’t be `null`.
  - `password`: Represents a column containing a string (128 characters). It can’t be `null`.
  - `first_name`: Represents a column containing a string (128 characters). This can be `null`.
  - `last_name`: Represents a column containing a string (128 characters). This can be `null`.

### Example of Creating a User:

1. **Create a User**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$ echo 'create User email="gui@hbtn.io" password="guipwd" first_name="Guillaume" last_name="Snow"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   (hbnb) 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
   (hbnb) 
   guillaume@ubuntu:~/AirBnB_v2$
   ```

2. **View the created User**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$ echo 'all User' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   (hbnb) [[User] (4f3f4b42-a4c3-4c20-a492-efff10d00c0b) {'updated_at': datetime.datetime(2017, 11, 10, 1, 17, 26), 'id': '4f3f4b42-a4c3-4c20-a492-efff10d00c0b', 'last_name': 'Snow', 'first_name': 'Guillaume', 'email': 'gui@hbtn.io', 'created_at': datetime.datetime(2017, 11, 10, 1, 17, 26), 'password': 'f4ce007d8e84e0910fbdd7a06fa1692d'}]
(hbnb) 
guillaume@ubuntu:~/AirBnB_v2$
   ```

3. **View the created User in MySQL**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$  echo 'SELECT * FROM users\G' | mysql -uhbnb_dev -p hbnb_dev_db
Enter password: 
*************************** 1. row ***************************
        id: 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
created_at: 2017-11-10 01:17:26
updated_at: 2017-11-10 01:17:26
     email: gui@hbtn.io
  password: guipwd
first_name: Guillaume
 last_name: Snow
guillaume@ubuntu:~/AirBnB_v2$
   ```

### Example Output:
- **User Creation**:
  ```bash
  (hbnb) 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
  ```

- **All Users**:
  ```bash
  (hbnb) [[User] (4f3f4b42-a4c3-4c20-a492-efff10d00c0b) {
    'updated_at': datetime.datetime(2017, 11, 10, 1, 17, 26),
    'id': '4f3f4b42-a4c3-4c20-a492-efff10d00c0b',
    'last_name': 'Snow',
    'first_name': 'Guillaume',
    'email': 'gui@hbtn.io',
    'created_at': datetime.datetime(2017, 11, 10, 1, 17, 26),
    'password': 'f4ce007d8e84e0910fbdd7a06fa1692d'
  }]
  ```

- **MySQL Output**:
  ```bash
  *************************** 1. row ***************************
          id: 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
      created_at: 2017-11-10 01:17:26
      updated_at: 2017-11-10 01:17:26
           email: gui@hbtn.io
        password: guipwd
    first_name: Guillaume
     last_name: Snow
  ```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
File to modify: **models/user.py**

---

# Task 8: DBStorage - Place

### Update **Place** (`models/place.py`):

- **Place** should inherit from both `BaseModel` and `Base` (in this order).

- Add or replace the following class attributes in **Place**:
  - `__tablename__`: Represents the table name (`places`).
  - `city_id`: Represents a column containing a string (60 characters), can’t be `null`, and is a foreign key to `cities.id`.
  - `user_id`: Represents a column containing a string (60 characters), can’t be `null`, and is a foreign key to `users.id`.
  - `name`: Represents a column containing a string (128 characters), can’t be `null`.
  - `description`: Represents a column containing a string (1024 characters), can be `null`.
  - `number_rooms`: Represents a column containing an integer, can’t be `null`, default value: 0.
  - `number_bathrooms`: Represents a column containing an integer, can’t be `null`, default value: 0.
  - `max_guest`: Represents a column containing an integer, can’t be `null`, default value: 0.
  - `price_by_night`: Represents a column containing an integer, can’t be `null`, default value: 0.
  - `latitude`: Represents a column containing a float, can be `null`.
  - `longitude`: Represents a column containing a float, can be `null`.

### Update **User** (`models/user.py`):

- Add or replace in the class **User**:
  - `places`: Represents a relationship with the **Place** class. If a **User** object is deleted, all linked **Place** objects should be automatically deleted. The reference from a **Place** object to its **User** should be named `user`.

### Update **City** (`models/city.py`):

- Add or replace in the class **City**:
  - `places`: Represents a relationship with the **Place** class. If a **City** object is deleted, all linked **Place** objects should be automatically deleted. The reference from a **Place** object to its **City** should be named `cities`.

### Example of Creating a Place:

1. **Create a Place**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$ echo 'create Place city_id="4b457e66-c7c8-4f63-910f-fd91c3b7140b" user_id="4f3f4b42-a4c3-4c20-a492-efff10d00c0b" name="Lovely_place" number_rooms=3 number_bathrooms=1 max_guest=6 price_by_night=120 latitude=37.773972 longitude=-122.431297' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   (hbnb) ed72aa02-3286-4891-acbc-9d9fc80a1103
   (hbnb) 
   guillaume@ubuntu:~/AirBnB_v2$ 
   ```

2. **View the created Place**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$ echo 'all Place' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   (hbnb) [[Place] (ed72aa02-3286-4891-acbc-9d9fc80a1103) {'latitude': 37.774, 'city_id': '4b457e66-c7c8-4f63-910f-fd91c3b7140b', 'price_by_night': 120, 'id': 'ed72aa02-3286-4891-acbc-9d9fc80a1103', 'user_id': '4f3f4b42-a4c3-4c20-a492-efff10d00c0b', 'max_guest': 6, 'created_at': datetime.datetime(2017, 11, 10, 1, 22, 30), 'description': None, 'number_rooms': 3, 'longitude': -122.431, 'number_bathrooms': 1, 'name': '"Lovely place', 'updated_at': datetime.datetime(2017, 11, 10, 1, 22, 30)}]
   (hbnb) 
   guillaume@ubuntu:~/AirBnB_v2$ 
   ```

3. **View the created Place in MySQL**:
   ```bash
   guillaume@ubuntu:~/AirBnB_v2$ echo 'SELECT * FROM places\G' | mysql -uhbnb_dev -p hbnb_dev_db
   Enter password: 
   *************************** 1. row ***************************
              id: ed72aa02-3286-4891-acbc-9d9fc80a1103
      created_at: 2017-11-10 01:22:30
      updated_at: 2017-11-10 01:22:30
         city_id: 4b457e66-c7c8-4f63-910f-fd91c3b7140b
         user_id: 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
            name: "Lovely place"
     description: NULL
    number_rooms: 3
   number_bathrooms: 1
       max_guest: 6
     price_by_night: 120
        latitude: 37.774
       longitude: -122.431
   guillaume@ubuntu:~/AirBnB_v2$ 
   ```

### Example Output:

- **Place Creation**:
  ```bash
  (hbnb) ed72aa02-3286-4891-acbc-9d9fc80a1103
  ```

- **All Places**:
  ```bash
  (hbnb) [[Place] (ed72aa02-3286-4891-acbc-9d9fc80a1103) {
    'latitude': 37.774,
    'city_id': '4b457e66-c7c8-4f63-910f-fd91c3b7140b',
    'price_by_night': 120,
    'id': 'ed72aa02-3286-4891-acbc-9d9fc80a1103',
    'user_id': '4f3f4b42-a4c3-4c20-a492-efff10d00c0b',
    'max_guest': 6,
    'created_at': datetime.datetime(2017, 11, 10, 1, 22, 30),
    'description': None,
    'number_rooms': 3,
    'longitude': -122.431,
    'number_bathrooms': 1,
    'name': '"Lovely place',
    'updated_at': datetime.datetime(2017, 11, 10, 1, 22, 30)
  }]
  ```

- **MySQL Output**:
  ```bash
  *************************** 1. row ***************************
      id: ed72aa02-3286-4891-acbc-9d9fc80a1103
      created_at: 2017-11-10 01:22:30
      updated_at: 2017-11-10 01:22:30
      city_id: 4b457e66-c7c8-4f63-910f-fd91c3b7140b
      user_id: 4f3f4b42-a4c3-4c20-a492-efff10d00c0b
      name: "Lovely place"
      description: NULL
      number_rooms: 3
      number_bathrooms: 1
      max_guest: 6
      price_by_night: 120
      latitude: 37.774
      longitude: -122.431
  ```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
Files to modify: **models/place.py**, **models/user.py**, **models/city.py**

---

# Task 9: DBStorage - Review

### Update **Review** (`models/review.py`):

- **Review** should inherit from both `BaseModel` and `Base` (in this order).

- Add or replace the following class attributes in **Review**:
  - `__tablename__`: Represents the table name (`reviews`).
  - `text`: Represents a column containing a string (1024 characters), can’t be `null`.
  - `place_id`: Represents a column containing a string (60 characters), can’t be `null`, and is a foreign key to `places.id`.
  - `user_id`: Represents a column containing a string (60 characters), can’t be `null`, and is a foreign key to `users.id`.

### Update **User** (`models/user.py`):

- Add or replace in the class **User**:
  - `reviews`: Represents a relationship with the **Review** class. If a **User** object is deleted, all linked **Review** objects should be automatically deleted. The reference from a **Review** object to its **User** should be named `user`.

### Update **Place** (`models/place.py`):

- **For DBStorage**: Add the `reviews` attribute to represent a relationship with the **Review** class. If a **Place** object is deleted, all linked **Review** objects should be automatically deleted. The reference from a **Review** object to its **Place** should be named `place`.

- **For FileStorage**: Implement a getter attribute `reviews` that returns a list of **Review** instances where `place_id` equals the current `Place.id`. This will represent the FileStorage relationship between **Place** and **Review**.

### Example of Creating a User and a Review:

1. **Create a User**:
   ```bash
   echo 'create User email="bob@hbtn.io" password="bobpwd" first_name="Bob" last_name="Dylan"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

2. **Create a Review**:
   ```bash
   echo 'create Review place_id="ed72aa02-3286-4891-acbc-9d9fc80a1103" user_id="d93638d9-8233-4124-8f4e-17786592908b" text="Amazing_place,_huge_kitchen"' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

3. **View the created Review**:
   ```bash
   echo 'all Review' | HBNB_MYSQL_USER=hbnb_dev HBNB_MYSQL_PWD=hbnb_dev_pwd HBNB_MYSQL_HOST=localhost HBNB_MYSQL_DB=hbnb_dev_db HBNB_TYPE_STORAGE=db ./console.py
   ```

4. **View the created Review in MySQL**:
   ```bash
   echo 'SELECT * FROM reviews\G' | mysql -uhbnb_dev -p hbnb_dev_db
   ```

### Example Output:

- **User Creation**:
  ```bash
  (hbnb) d93638d9-8233-4124-8f4e-17786592908b
  ```

- **Review Creation**:
  ```bash
  (hbnb) a2d163d3-1982-48ab-a06b-9dc71e68a791
  ```

- **All Reviews**:
  ```bash
  (hbnb) [[Review] (f2616ff2-f723-4d67-85dc-f050a38e0f2f) {
    'text': 'Amazing place, huge kitchen',
    'place_id': 'ed72aa02-3286-4891-acbc-9d9fc80a1103',
    'id': 'f2616ff2-f723-4d67-85dc-f050a38e0f2f',
    'updated_at': datetime.datetime(2017, 11, 10, 4, 6, 25),
    'created_at': datetime.datetime(2017, 11, 10, 4, 6, 25),
    'user_id': 'd93638d9-8233-4124-8f4e-17786592908b'
  }]
  ```

- **MySQL Output**:
  ```bash
  *************************** 1. row ***************************
      id: f2616ff2-f723-4d67-85dc-f050a38e0f2f
      created_at: 2017-11-10 04:06:25
      updated_at: 2017-11-10 04:06:25
      text: Amazing place, huge kitchen
      place_id: ed72aa02-3286-4891-acbc-9d9fc80a1103
      user_id: d93638d9-8233-4124-8f4e-17786592908b
  ```

### Repo:
GitHub repository: **AirBnB_clone_v2**  
Files to modify: **models/review.py**, **models/user.py**, **models/place.py**
