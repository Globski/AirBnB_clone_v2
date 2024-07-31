# Web Flask

## Introduction

Create a web framework using Flask which includes setting up routes, templates, static files, and integrating with SQLAlchemy for database management.

## Project Structure

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

- Develop a web application using Flask, Set up routing, handling variables in routes, and rendering templates.
- Create and use templates with Jinja2 for rendering HTML with dynamic content.
- Define routes in Flask to handle incoming requests and direct them to appropriate view functions.
- Implement various HTTP methods (GET, POST, etc.) to interact with users and manage data.
- Use templates to generate dynamic HTML content based on data passed from Flask routes.
- Connect Flask application to a MySQL database to manage and store data.
- Implement SQLAlchemy to interact with the database, perform CRUD (Create, Read, Update, Delete) operations, and manage database models.

## Learning Objectives

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

## How to Use
To set up and run Flask application, follow these instructions:

**Create a Virtual Environment**

It’s best to use a virtual environment to manage your project’s dependencies:

```bash
python -m venv venv
```

Activate the virtual environment:

- **Windows:**

    ```bash
    venv\Scripts\activate
    ```

- **macOS/Linux:**

    ```bash
    source venv/bin/activate
    ```

**Install Dependencies**

Install the required Python packages using `pip`:

```bash
pip install -r requirements.txt
```

**Set Up the Database**

Initialize your database. This typically involves running the Flask commands to create tables and apply migrations:

```bash
flask db init       # Initialize the database
flask db migrate    # Create migration scripts
flask db upgrade    # Apply migrations
```
**Configure Environment Variables**

Create a `.env` file in the root directory of your project and add the necessary environment variables. Here’s an example `.env` file:

```
FLASK_APP=main.py
FLASK_ENV=development
SECRET_KEY=your_secret_key_here
DATABASE_URL=sqlite:///your_database.db
```
**Run the Flask Application**

Start the Flask development server:

```bash
flask run
```

By default, the server will be available at `http://127.0.0.1:5000`.

**Access the Application**

Open your web browser and navigate to `http://127.0.0.1:5000` to view the application.

- **Registration:** Go to `/register` to create a new user account.
- **Login:** Go to `/login` to log in with your credentials.
- **Users List:** Go to `/users` to view a paginated list of users.
- **Search:** Go to `/search` to search for users by name.

**Stop the Application**

To stop the Flask development server, simply press `Ctrl+C` in your terminal.


### Additional Notes

- **Debug Mode:** When running in development mode (`FLASK_ENV=development`), the server will automatically reload on code changes.
