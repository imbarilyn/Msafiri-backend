# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: "Benjamin", email: "ben@gmail.com", password: "whatever")
user2 = User.create(name: "Kendi", email: "kendi@gmail.com", password: "Whenever")
user3 = User.create(name: "Simion", email: "simion@gmail.com", password: "Forever")
review1 = Review.create(star_ratings: 10, comment: "excellent", user_id: 1, destination_id: 5)
review2 = Review.create(star_ratings: 5, comment: "good", user_id: 2, destination_id: 5)
review3 = Review.create(star_ratings: 7, comment: "Neutral", user_id: 3, destination_id: 3)
review4 = Review.create(star_ratings: 3, comment: "poor", user_id: 2, destination_id: 1)
destination1 = Destination.create(place: "Nairobi", event: "Devfest", date: 11, time: 12)
destination2 = Destination.create(place: "Mombasa", event: "Clubing", date: 12, time: 11)
destination3 = Destination.create(place: "Kisumu", event: "Swimming", date: 14, time: 10)
destination4 = Destination.create(place: "Nakuru", event: "Eating_competation", date: 16, time:8)
destination5 = Destination.create(place: "Meru", event: "Hiking", date: 17, time: 9)