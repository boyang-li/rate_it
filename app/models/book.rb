class Book < ActiveRecord::Base
	has_many :ratings
	has_many :comments
	has_many :tags
	has_many :categorizations
	has_many :categories, through: :categorizations

	validates :name, :author, :description, :isbn, :image, :viewed, presence: :ture
	validates :name, uniqueness: { case_sensitive: false }
	validates :isbn, uniqueness: :true
	validates :image, allow_blank: :true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "must be an url for GIF, JPG or PNG image."
	}

	def self.latest
		Book.order(:updated_at).last
	end
end
