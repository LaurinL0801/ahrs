format-pyproject-toml:
  nix run nixpkgs#tombi -- format pyproject.toml

format-python:
  ruff format *.py
