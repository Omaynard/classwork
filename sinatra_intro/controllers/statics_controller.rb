class StaticsController < Sinatra::Base
	configure :development do 
			register Sinatra::Reloader
		
		end


	#Pokemon RESTful routes
	get '/' do 
		'<h1>Homepage</h1>'
	end
end