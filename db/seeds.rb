# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(price: 500, name: 'Apple iPhone XR', description: 'All-screen design. Longest battery life ever in an iPhone. Fastest performance. Water and splash resistant. Studio-quality photos and 4K video. More secure with Face ID. The new iPhone XR. It’s a brilliant upgrade.', photo_url: 'https://s3.amazonaws.com/other-photos012345/iphone.jpg')
Item.create(price: 400, name: 'Samsung Galaxy Note 9', description: 'Galaxy Note has always put powerful technology in the hands of those who demand more. Now, the Galaxy Note9 surpasses even these high expectations, focusing on what matters most in today’s always-on, mobile world.', photo_url: 'https://s3.amazonaws.com/other-photos012345/note.jpg')
Item.create(price: 450, name: 'Google Pixel 3', description: 'This phone uses technology that intelligently switches you between Fi’s three cellular network partners, as well as secure Wi-Fi hotspots, to give you the best coverage and save on data.', photo_url: 'https://s3.amazonaws.com/other-photos012345/pixel.jpg')