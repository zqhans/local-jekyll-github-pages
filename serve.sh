#!bin/sh

# install gems in the Gemfile at container startup
bundle install
# run Jekyll server when container starts
# --host 0.0.0.0 make server accessible from outside the container
# --port 4000 specify port
# --livereload use hot reload (optional)
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload