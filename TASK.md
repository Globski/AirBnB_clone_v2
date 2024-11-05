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

#### Repo:

**GitHub repository: AirBnB_clone_v2**

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

---
