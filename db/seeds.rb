# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    java_shops = JavaShop.create([{ shop_name: 'StarBucks'}, {shop_name: 'Jamba Juice'}])

    puts 'Java Shops Ready!'

    Info.create(fav_drink: 'Chocolate Latte', least_fav: 'Mango Capuccino', recommend: 'true', comment: 'I loved going to Java Club! It was such a great atmosphere! The server was hot!', java_shop: java_shops.first)

    Info.create(fav_drink: 'Mocha Latte', least_fav: 'Vanilla Capuccino', recommend: 'false', comment: 'Though the Mocha Latte was fab! The service was poor, and the live music was not great', java_shop: java_shops.last)

    puts 'Info loaded!'
