Range.new(1,10).each do |id|
  name = Faker::Name.unique.name
  email = Faker::Internet.unique.email
  
  Client.create(id: id, name: name, email: email)
end

Range.new(1,200).each do |id|
  title = Faker::Commerce.product_name
  brand = Faker::Commerce.brand
  price = Faker::Commerce.price
  image = Faker::LoremFlickr.image(size: "400x400", search_terms: ['product'])
  review_score = Faker::Number.between(from: 0.0, to: 10.0).truncate(2)
  
  Product.create(id: id, title: title, brand: brand, price: price, image: image, review_score: review_score)
end


