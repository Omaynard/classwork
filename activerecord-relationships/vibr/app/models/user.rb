class User < ApplicationRecord
	has_many :bands
	has_and_belongs_to_many :chats
end
