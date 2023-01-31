# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
cats = [
  {
    name: 'Garfield',
    age: 41,
    enjoys: 'eating lasagna',
    image: 'https://en.wikipedia.org/wiki/Garfield_%28character%29#/media/File:Garfield_the_Cat.svg'
  },
  {
    name: 'Hello Kitty',
    age: 40,
    enjoys: 'being cute',
    image: 'https://cdn.shopify.com/s/files/1/0054/4371/5170/products/FiGPiN_360HelloKittySANRIOPIN.png?v=1627413934'
  },
  {
    name: 'Sylvester',
    age: 50,
    enjoys: 'eating Tweety',
    image: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/82/Sylvester_the_Cat.svg/800px-Sylvester_the_Cat.svg.png'
  }
]

cats.each do |each_cat|
  Cat.create each_cat
  puts "creating cat #{each_cat}"
end