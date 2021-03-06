# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  [
    {username: "Luke", password: "pass"},
    {username: "Ania", password: "pass"},
    {username: "Pablo", password: "pass"}
    ]
)

Message.create(
  [
    {body: "Hello world!", user: User.where(username: "Luke").last},
    {body: "Miło Cię widzieć!", user: User.where(username: "Ania").last},
    {body: "Pozdrowienia z Cebulolandu!", user: User.where(username: "Pablo").last},
    {body: "Hehe", user: User.where(username: "Luke").last}
  ]
)