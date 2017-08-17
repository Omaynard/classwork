require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/statics_controllers.rb'
require './controllers/user_controllers.rb'
require 'rack'

use StaticsControllers
run UserControllers

