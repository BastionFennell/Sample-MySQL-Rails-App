require 'puma/capistrano'
require 'bundler/capistrano'
server '166.78.243.58' , :web, :app, :db, primary: true
set :application, "my_app"
set :scm, 'git'
set :repository, 'git@github.com:BastionFennell/Sample-MySQL-Rails-App.git'
set :branch, 'master'
set :user, 'root'
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
after 'deploy:restart', 'deploy:cleanup'
