require 'faker'
require 'csv'
require 'net/http'
require 'json'

# Clear existing data
Library.destroy_all
BookGenre.destroy_all
Book.destroy_all
Genre.destroy_all
Author.destroy_all

# Data Source 1: Faker for Authors and Genres
puts "Seeding authors and genres with Faker..."

50.times do
  Author.create!(
    name: Faker::Book.author,
    bio: Faker::Lorem.paragraph(sentence_count: 5)
  )
end

genres_data = [
  { name: "Fiction", description: "Stories about people, places, and events that are not real." },
  { name: "Non-Fiction", description: "Factual stories and information." },
  { name: "Mystery", description: "Stories about solving crimes or puzzles." },
  { name: "Romance", description: "Stories about love and relationships." },
  { name: "Science Fiction", description: "Stories about future technology and space." },
  { name: "Fantasy", description: "Stories with magical elements." },
  { name: "Biography", description: "Stories about real people's lives." },
  { name: "History", description: "Stories about past events." },
  { name: "Horror", description: "Stories designed to scare." },
  { name: "Thriller", description: "Fast-paced stories full of suspense." }
]

genres_data.each do |genre|
  Genre.create!(genre)
end

# Data Source 2: CSV for Books
puts "Seeding books from CSV..."

csv_text = <<~CSV
title,description,published_year,author_name
"The Great Gatsby","A classic novel about the American Dream.",1925,F. Scott Fitzgerald
"To Kill a Mockingbird","A story of racial injustice in the American South.",1960,Harper Lee
"1984","A dystopian novel about totalitarianism.",1949,George Orwell
"Pride and Prejudice","A romantic novel about manners and marriage.",1813,Jane Austen
"The Catcher in the Rye","A coming-of-age story.",1951,J.D. Salinger
"Moby-Dick","An adventure about a whale hunt.",1851,Herman Melville
"War and Peace","A historical novel set during the Napoleonic Wars.",1869,Leo Tolstoy
"The Hobbit","A fantasy adventure.",1937,J.R.R. Tolkien
"Harry Potter and the Sorcerer's Stone","A young wizard's first year at Hogwarts.",1997,J.K. Rowling
"The Lord of the Rings","An epic fantasy trilogy.",1954,J.R.R. Tolkien
CSV

CSV.parse(csv_text, headers: true) do |row|
  author = Author.find_or_create_by!(name: row['author_name']) do |a|
    a.bio = Faker::Lorem.paragraph
  end
  Book.create!(
    title: row['title'],
    description: row['description'],
    published_year: row['published_year'].to_i,
    author: author
  )
end

# Data Source 3: Additional Faker books to reach 200+ records
puts "Seeding additional books with Faker..."

100.times do |i|
  author = Author.all.sample
  Book.create!(
    title: "#{Faker::Book.title} #{i}",
    description: Faker::Lorem.paragraph(sentence_count: 3),
    published_year: Faker::Number.between(from: 1800, to: 2023),
    author: author
  )
end

# Assign genres to books randomly
puts "Assigning genres to books..."

Book.all.each do |book|
  genres = Genre.all.sample(rand(1..3))
  genres.each do |genre|
    BookGenre.find_or_create_by!(book: book, genre: genre)
  end
end

# Data Source 4: CSV for Libraries with location data
puts "Seeding libraries from CSV..."

CSV.foreach(Rails.root.join('lib', 'libraries.csv'), headers: true) do |row|
  Library.create!(
    name: row['name'],
    address: row['address'],
    latitude: row['latitude'].to_f,
    longitude: row['longitude'].to_f,
    phone: row['phone'],
    website: row['website']
  )
end

# Additional libraries with Faker
puts "Seeding additional libraries with Faker..."

10.times do |i|
  Library.create!(
    name: "#{Faker::Company.name} Library #{i}",
    address: Faker::Address.full_address,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    phone: Faker::PhoneNumber.phone_number,
    website: Faker::Internet.url
  )
end

puts "Seeding completed! Total records:"
puts "Authors: #{Author.count}"
puts "Genres: #{Genre.count}"
puts "Books: #{Book.count}"
puts "BookGenres: #{BookGenre.count}"
puts "Libraries: #{Library.count}"
