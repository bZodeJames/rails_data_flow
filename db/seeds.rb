require 'faker'

20.times do |article|

Article.create!(title: Faker::StarWars.vehicle,
                author: Faker::StarWars.character,
                rating: [1, 2, 3, 4, 5].sample,
                body: Faker::StarWars.quote
                )
end

puts "Articles created"