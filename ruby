#!/usr/bin/env bash

echo "Installing imagemagick ..."
  brew install imagemagick

echo "Installing RVM (Ruby Version Manager) ..."
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
  echo "
# RVM
[[ -s '/Users/`whoami`/.rvm/scripts/rvm' ]] && source '/Users/`whoami`/.rvm/scripts/rvm'" >> ~/.zshrc
  source ~/.zshrc"

echo "Installing ree, ruby enterprise edition ..."
  rvm install ree --force

echo "Installing ruby version 1.9.2, and make it default ..."
  rvm install 1.9.2-p290
  rvm use 1.9.2 --default

echo "Installing essential gems ..."
  gem install rails
  gem install rails -v=3.0.7
  gem install mysql2
  gem install passenger
  gem install nokogiri
  gem install capistrano
  gem install capistrano-ext
  gem install delayed_job
  gem install hoptoad_notifier
  gem install facebooker2
  gem install factory_girl
  gem install sphinx

echo "Installing pow, a zero configure web server ..."
  curl get.pow.cx | sh

