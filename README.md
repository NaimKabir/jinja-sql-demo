# jinja-sql-demo

A small proof of concept for how to set up a Jinja-powered codebase for an analytics org.

**Structure**

Files in the `macros` directory are templates for SQL queries.

Files in the `models` directory are callers of those SQL templates, and can be rendered into actual SQL.

**Dependencies**

This should work with Python3 on Mac/Linux machines.

You can install requirements with:

`pip install -r requirements.txt`

**Usage**

To render a model, you can run:

`./render.py models/{model_name}.sql`
