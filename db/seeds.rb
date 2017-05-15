# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create({
  first_name: "Gangsta",
  last_name: "Molotov",
  email: "gangsta.molotov@example.com",
  password: "test123"
})

blogpost = user.blogposts.create({title: "My first blogpost"})
blogpost = Blogpost.create({title: "Hello world", user_id: user.id})
blogpost = Blogpost.create({title: "Hello world 2", user: user})
