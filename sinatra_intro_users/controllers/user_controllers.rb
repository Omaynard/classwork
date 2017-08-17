class UserControllers < Sinatra::Base
	# sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')
	# sets the view directory correctly 
    set :views, Proc.new {File.join(root, 'views')}


	configure :development do 
	 	register Sinatra::Reloader
	end
	$pokemon = [{
      id: 0,
      name: "Charizard",
      description: "Fire pokemon"
  },
  {
      id: 1,
      name: "Wobbuffet",
      description: "Psychic"
  },
  {
      id: 2,
      name: "Trubbish",
      description: "Actual Garbage"
  }];
	get '/' do 
 		@count = $pokemon.length
 		@pokemon = $pokemon
       
		erb :index
	end
	get '/user' do 
		"where all users go"
	end
	get '/user/new' do 
		
		erb :new
	end

	get '/user/:id' do
		@pokemon = ["Charizard","Wobbuffet", "Trubbish"]
		
		id = params[:id]
		@pokemon =  $pokemon[id.to_i]
		
		erb :show
	end
	post '/user' do 
		"create new users"
	name = params[:name]
	description = params[:description]

	new_pokemon {
		id: $pokemon.length
		name: name,
		description: description
	}
	$pokemon.push(new_pokemon)
	redirect :'/'
	end

	get "/user/:id/edit" do 
		id = params[:id]
		"A form to edit a user #{id}"
		erb :edit
	end
	put "/user/:id" do
		id = params[:id]
		"Updateing a new user #{id}"
	end

	delete "/user/:id" do
		id = params[:id]
		"deleteing a user #{id}"
	end





end