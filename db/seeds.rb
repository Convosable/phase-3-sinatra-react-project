puts "🌱 Seeding spices..."

    5.times do
        Shelter.create(
            name: Faker::Company.name,
            location: Faker::Address.full_address,
            bio: Faker::Company.catch_phrase,
            established_date: rand(1950..2023)
        )
    end

    10.times do 
        Dog.create(
            name: Faker::Creature::Dog.name,
            image_url: Faker::LoremFlickr.image(size: "640x480", search_terms: ['dog']),
            age: rand(1..15),
            breed: Faker::Creature::Dog.breed,
            sex: Faker::Creature::Dog.gender,
            weight: rand(5..100),
            size: Faker::Creature::Dog.size,
            shelter_id: rand(1..5),
            breeder_id: rand(1..5),
            created_at: Time.now,
            updated_at: Time.now
        )
    end

    10.times do
        Cat.create(
            name: Faker::Creature::Cat.name,
            image_url: Faker::LoremFlickr.image(size: "640x480", search_terms: ['cat']),
            age: rand(1..15),
            breed: Faker::Creature::Cat.breed,
            sex: Faker::Creature::Dog.gender,
            weight: rand(5..50),
            size: Faker::Creature::Dog.size,
            shelter_id: rand(1..5),
            breeder_id: rand(1..5),
            created_at: Time.now,
            updated_at: Time.now
        )
    end

puts "✅ Done seeding!"



