# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    people = Person.create([{ name: 'Giovanni'}, {name: 'Miranda'}])

    puts 'People are present!'

    JavaScript.create(shop_name: 'Java Club', fav_drink: 'Chocolate Latte', least_fav: 'Mango Capuccino', recommend: 'true', comment: 'I loved going to Java Club! It was such a great atmosphere! The server was hot!', person: people.first)

    JavaScript.create(shop_name: 'Mocha Bar', fav_drink: 'Mocha Latte', least_fav: 'Vanilla Capuccino', recommend: 'false', comment: 'Though the Mocha Latte was fab! The service was poor, and the live music was not great', person: people.last)

    puts 'Javas loaded!'
