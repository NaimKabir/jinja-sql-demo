# jinja-sql-demo

A small proof of concept for how to set up a Jinja-powered codebase for an analytics org.

**Structure**

Files in the `macros` directory are templates for SQL queries.

Files in the `models` directory are callers of those SQL templates, and can be rendered into actual SQL.

**Usage**

To render a model, you can run:

`./render.py models/{model_name}.sql`
