# jinja-sql-demo

A small proof of concept for how to set up a Jinja-powered codebase for an analytics org.

Designed to be paired with this [thesis article on Medium](https://towardsdatascience.com/jinja-sql-%EF%B8%8F-7e4dff8d8778?sk=2e8e678c133ec42f7ae8427f04a97295).

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
