class PokemonsController < Sinatra::Base
	configure :development do 
		register Sinatra::Reloader
	
	end


#Pokemon RESTful routes

	#INDEX
get "/pokemon" do 
	"This is where all the pokemon will go " 
end

#NEW
get "/pokemon/new" do 
	"A form to create a new pokemon"
end
#SHOW
 get "/pokemon/:id" do 
 	id = params[:id]
 	'This is the show page for number #{id}'
 end

#CREATE
post "/pokemon" do 
	"CREATEing a new pokemon"
end

#EDIT

get "/pokemon/:id/edit" do 
	id = params[:id]
	"A form to EDIT a pokemon #{id}"
end

#UPDATE
put "/pokemon/:id" do
	id = params[:id]
	"UPDATEing a new pokemon #{id}"
end

#DELETE
delete "/pokemon/:id" do
	id = params[:id] 
	'DELETEing a pokemon #{id}'
end

end