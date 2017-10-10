12.times do
  Event.create(
    name: "#{Faker::StarWars.specie} #{Faker::StarWars.vehicle}",
    description: Faker::Hipster.paragraph(3..6),
    location: Faker::Space.star_cluster,
    date: Faker::Date.forward(365)
  )
end
