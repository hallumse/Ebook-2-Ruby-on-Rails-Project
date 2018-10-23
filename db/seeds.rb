# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "asdf", email: "asdf@asdf.com", password: "testing")

ron_rash = User.create!(name: "Ron Rash", email: "ron@ron_rash.dev", password: "testing1")

# books = [
#   { title: "Rain", price: 15.99 },
#   { title: "Tuesdays With Morrie", price: 24.99 },
#   { title: "The Holy Grail", price: 24.99 },
#   { title: "Summertime", price: 12.99 }
# ]

50.times do
  book = Book.new
  book.title = Faker::Book.title
  book.price = rand(5..19)
  book.author = User.first
  # book.book_cover.attach(io: File.open(Rails.root.join('public/photo-1532012197267-da84d127e765.jpeg')), filename:"photo-1532012197267-da84d127e765.jpeg")
  book.save!
end

# books.each do |book|
#   Book.create!(title: book[:title], price: book[:price])
# end

# books.all.each do |book|
#   book.authors << Author.all.sample
# end
