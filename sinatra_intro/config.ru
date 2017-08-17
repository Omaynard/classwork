require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/statics_controller.rb'
require './controllers/pokemons_controller.rb'
require 'rack'
# This is the homepage route - unrelated to our RESTful pokemon 


use StaticsController
run PokemonsController