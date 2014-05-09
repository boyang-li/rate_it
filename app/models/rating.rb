class Rating < ActiveRecord::Base
	belongs_to :book

	validates :author, :text, presence: :true

	def get_avg_rating(book_id)
		total = 0
		count = 0
		avg = 0.0

		ratings = Rating.where(book_id: book_id)
		ratings.each do |r|
			total += r.rating
			count += 1
		end

		if count > 0
			avg = total / count
		end
		avg
	end
end
