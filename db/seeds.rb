# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(:username => "Mr. Nice Guy")
p = Post.new
p.title = "Smooth Terminal"
p.content = "Weeks went by, gliding throught the airport terminal. Why, Who knows..."
p.user_id = 1
p.save
