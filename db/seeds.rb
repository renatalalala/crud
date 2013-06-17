NUM = 5

NUM.times do 
	Note.create(title: Faker::Lorem.words(5), content: Faker::Lorem.sentence(7))
end
