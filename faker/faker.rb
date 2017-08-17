require 'faker'
class FakerStory
	include Faker

	def facts
		Faker::ChuckNorris.fact
	end

	def name
		Faker::Name.name
	end

	def story 
		 puts "Once upon time, there was a #{demographic} called #{name} who lived in #{house} . He/She screamed  #{movie_quote} . Why you say ? Because #{familyguy} "
	end 

	def house
		Faker::HarryPotter.house
	end
	def fresh_prince_quote
		Faker::TheFreshPrinceOfBelAir.quote
	end

	def demographic
		Faker::Demographic.sex
	end
	def simpsons
		Faker::Simpsons.quote 
	end
	def familyguy
		Faker::FamilyGuy.quote
	end
	def movie_quote
		Faker::FamilyGuy.quote
	end

	 
end
story = FakerStory.new
story.story
 