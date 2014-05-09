# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seeding categories
# parent_categories = Category.create([
#   { top: 1, name: 'Arts & Photography', description: 'Root' },
#   { top: 1, name: 'Computers & Technology', description: 'Root' },
#   { top: 1, name: 'Literature & Fiction', description: 'Root' }
# ])
#
# children_categories = Category.create([
#   { parent_id: Category.find_by_name('Arts & Photography').id, top: 0, name: 'Design Arts', description: 'Lv1' },
#   { parent_id: Category.find_by_name('Arts & Photography').id,top: 0, name: 'Fashion', description: 'Lv1' },
#   { parent_id: Category.find_by_name('Computers & Technology').id,top: 0, name: 'Programming', description: 'Lv1' },
#   { parent_id: Category.find_by_name('Computers & Technology').id,top: 0, name: 'Graphic Design', description: 'Lv1' },
# ])

desc = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."

# Seeding books
(1..10).each do |i|
	Book.create([{ name: Faker::Lorem.word, author: Faker::Name.name, description: desc, isbn: Faker::Code.isbn,
		image: 'books/' + i.to_s + '.jpg'}])
end