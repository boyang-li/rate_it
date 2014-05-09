class Category < ActiveRecord::Base
	has_many :categorizations
	has_many :products, through: :categorizations
	# Self join on "parent_id" for categories hierarchy
	has_many :subcategories, class_name: "Category",
													 foreign_key: "parent_id"
	belongs_to :parent, class_name: "Category"

	validates :name, :description, presence: :ture
end
