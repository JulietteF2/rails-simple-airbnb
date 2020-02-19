# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

house = ["'s Mansion", "'s Suite", "'s Studio", "'s Bedroom", "'s Castle", "'s Palace", "'s Boat", "'s Room", "'s Skyscrapper", "'s Family House"]

25.times do
  Flat.create(
    name: Faker::TvShows::BojackHorseman.character + house.sample,
    address: Faker::Address.full_address,
    description: Faker::TvShows::BojackHorseman.quote,
    price_per_night: (47...187).to_a.sample,
    number_of_guests: (1...6).to_a.sample
  )
end
