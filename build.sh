#!/usr/bin/env bash
set -o errexit
pip install -r movie_project/requirements.txt
python movie_project/manage.py collectstatic --no-input
python movie_project/manage.py migrate