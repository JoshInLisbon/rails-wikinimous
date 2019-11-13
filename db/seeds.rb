# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all Articles"
Article.destroy_all

puts "make 10 articles"
10.times do
  big_num = rand(400..3000)
  Article.create(
    title: Faker::TvShows::Seinfeld.quote,
    content: Faker::Lorem.paragraph_by_chars(number: big_num, supplemental: false)
  )
end
