#!/usr/bin/env python

import sys
from jinja2 import Environment, FileSystemLoader

MACRO_DIR = "macros"


def get_template_render(path: str) -> str:
    """
    Render a Jinja2 template to actual text, using macros in scope.
    :param path: Path to the file you'd like to render.
    """
    env = Environment(loader=FileSystemLoader(MACRO_DIR))
    render = env.from_string(open(path, 'r').read()).render()
    return render


if __name__ == '__main__':
    assert len(sys.argv) > 1 and sys.argv[1] is not None, """Filepath must be supplied. Example usage:
        `./render.py models/purchase_volumes.sql`
    """
    filepath = sys.argv[1]
    render = get_template_render(filepath)
    print(render)
