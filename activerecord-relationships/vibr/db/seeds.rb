# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create({
	name: "Ollie Holden",
	email: "odholden@gmail.com",
	dob: Date.new
	})
user2 = User.create({
	name: "Ben Holden",
	email: "ben@gmail.com",
	dob: Date.new
	})
chat = Chat.create({
	title: "This is a chat title"
	})
band1 = Band.create({
	name: "The Smashing Pumpkns",
	image: "http://filmmurray.com/300/300",
	genre: "Grunge"
	})
band2 = Band.create({
	name:"Pearl Jam",
	image: "http://fillmurray.com/300/300",
	genre: "Grunge"
	})
user1.bands.push band1
user1.bands.push band2 
user1.save
chat.users.push user1
chat.users.push user2
chat.save
