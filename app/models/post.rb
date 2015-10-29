class Post < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 3}
	validates :body, presence: true

	#Associations
	has_many :comments, dependent: :destroy
	
end

