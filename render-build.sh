# exit on error
set -o errexit

bundle install

# assets
# bundle exec rails assets:precompile
# bundle exec rails assets:clean

# db
# bundle exec rails db:migrate

# js
bun install
bin/vite build
