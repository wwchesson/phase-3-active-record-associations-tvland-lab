puts "Seeding games..."

10.times do
  Actor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

10.times do
    Character.create(
        name: Faker::Name.name,
        actor_id: rand(31..40),
        show_id: rand(21..30),
        catchphrase: Faker::String.random(length: 4)
    )
end

10.times do(
    Network.create(
        call_letters: Faker::String.random(length: 3),
        channel: rand(1..60)
    )
)
end

10.times do( 
    Show.create(
    name: Faker::String.random(length: 7),
    day: Faker::String.random(length: 7),
    season: Faker::String.random(length: 7),
    genre: Faker::String.random(length: 7),
    network_id: rand(21..30)
)
)
end 

puts "Done seeding!"