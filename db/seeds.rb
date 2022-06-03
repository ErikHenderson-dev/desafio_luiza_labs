Range.new(1,10).each do |id|
  name = Faker::Name.unique.name
  email = Faker::Internet.unique.email
  
  Client.create(id: id, name: name, email: email)
end

