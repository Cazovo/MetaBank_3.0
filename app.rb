require 'sinatra'
require 'sinatra/activerecord'
require '/app'


set :database, "sqlite3:project-name.sqlite3"