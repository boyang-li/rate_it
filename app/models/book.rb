class Book < ActiveRecord::Base
	has_many :ratings, dependent: :destroy
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

	def get_avg_rating
		total = 0.0
		count = 0
		avg = 0.0

		ratings = Rating.where(book_id: self.id)
		ratings.each do |r|
			total += r.rating
			count += 1
		end

		if count > 0
			avg = (total / count).round(1)
		else
			avg = 0
		end
		avg
	end
end
