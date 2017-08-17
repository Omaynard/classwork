class Post 
	attr_accessor :id, :title, :body
	
	
	def self.open_connection
		 PG.connect(dbname: 'blog')


	end
	#Model changing the data to something easier to understand and deal with 
	def self.hydrate post_data

	    post = Post.new

	    post.id = post_data['id']
	    post.title = post_data['title']
	    post.body = post_data['body']

	    post

	end
	#Gets all the data 
	def self.all
		conn = self.open_connection 
		sql = "SELECT * FROM post ORDER BY id"
		result = conn.exec(sql)

		posts = result.map do |post|
			self.hydrate post
		end
		posts

	end
	#find the data with the id selected 
	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM post WHERE id = #{id} LIMIT 1"
		posts = conn.exec(sql)
		self.hydrate posts[0]
	end
	#????
	
	def self.save title_1, body_1
		conn = self.open_connection
		sql = "INSERT INTO post (title, body) VALUES ('#{title_1}', '#{body_1}')"
		posts = conn.exec(sql)
	end

	def update
		conn = Post.open_connection
		sql = "UPDATE post SET title= '#{self.title}', body= '#{self.body}' WHERE id = #{self.id}"
		conn.exec(sql)
	end
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM post WHERE id = #{id}"
		conn.exec(sql)
	end





end