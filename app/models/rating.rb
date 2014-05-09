class Rating < ActiveRecord::Base
	belongs_to :book

	before_create :set_rating

	validates :rating, presence: :true

	def set_rating
		self.rating = self.rating.to_i
	end
end
