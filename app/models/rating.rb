class Rating < ActiveRecord::Base
	belongs_to :book
	belongs_to :comment

	validates :author, :text, presence: :true
end
