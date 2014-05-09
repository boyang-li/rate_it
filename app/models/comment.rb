class Comment < ActiveRecord::Base
	belongs_to :book
	has_one :rating

	validates :author, :text, presence: :true
end
