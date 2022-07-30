# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Restaurant.create(name: "Epicure", category: "french", address: "75008 Paris")
# Restaurant.create(name: "KFC", category: "italian", address: "524 Yanping Road")
# Restaurant.create(name: "burger king", category: "japanese", address: "130000 SH")
# Restaurant.create(name: "currify", category: "belgian", address: "430000 SH")
# Restaurant.create(name: "Zhangliang", category: "chinese", address: "240000 SH")

# require 'faker'
Restaurant.all.each do |rest|
  (1..10).to_a.sample.times do
    rest.reviews << Review.new(rating: (0..5).to_a.sample, content: Faker::Lorem.sentences)
  end
end
