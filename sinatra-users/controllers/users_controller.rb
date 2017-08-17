class UsersController < Sinatra::Base

	# sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), "..")

	# sets the view directory correctly
	set :views, Proc.new { File.join(root, "views") }

	configure :development do
		register Sinatra::Reloader
	end

	$pokemon = [{
      id: 0,
      name: "Chairizard",
      description: "Fire-type Pokemon"
  },
  {
      id: 1,
      name: "Wobbuffet",
      description: "Psychic-type Pokemon"
  },
  {
      id: 2,
      name: "Trubbish",
      description: "Poison-type Pokemon"
  }];


	# INDEX
	get "/users" do
		@pokemon = $pokemon
		erb :index
		# "This is the users INDEX"
	end

	# NEW
	get "/users/new" do
		@pokemon = $pokemon
		erb :new
	end

	# SHOW
	get "/users/:id" do
		id = params[:id]
		@pokemon = $pokemon[id.to_i]
		erb :show
	end

	# CREATE
	post "/users" do
		name = params[:name]
		description = params[:description]
		new_pokemon = {
			id: $pokemon.length,
			name: name,
			description: description
		}
		$pokemon.push new_pokemon
		redirect :"/users"
	end

	# EDIT
	get "/users/:id/edit" do
		id = params[:id]
		@pokemon = $pokemon[id.to_i]
		erb :edit
	end

	# UPDATE
	put "/users/:id" do
		id = params[:id].to_i
		pokemon = $pokemon[id]
		pokemon[:name] = params[:name]
		pokemon[:description] = params[:description]
		$pokemon[id] = pokemon
		redirect :"/users/#{id}"
	end

	# DELETE
	delete "/users/:id" do
		id = params[:id]
		pokemon = $pokemon[id.to_i]
		$pokemon.delete pokemon
		redirect :"/users"
	end
end