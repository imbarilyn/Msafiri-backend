user1 = User.create(name: "Benjamin", email: "ben@gmail.com", password: "whatever")
user2 = User.create(name: "Kendi", email: "kendi@gmail.com", password: "Whenever")
user3 = User.create(name: "Simion", email: "simion@gmail.com", password: "Forever")

review1 = Review.create(star_ratings: 10, comment: "excellent", user_id: 1, destination_id: 5)
review2 = Review.create(star_ratings: 5, comment: "good", user_id: 2, destination_id: 5)
review3 = Review.create(star_ratings: 7, comment: "Neutral", user_id: 3, destination_id: 3)
review4 = Review.create(star_ratings: 3, comment: "poor", user_id: 2, destination_id: 1)

destination1 = Destination.create(place: "Nairobi", image:"https://images.pexels.com/photos/6143164/pexels-photo-6143164.jpeg?auto=compress&cs=tinysrgb&w=600",  event: "Devfest", date: 11, time: 12)
destination2 = Destination.create(place: "Mombasa",  image:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Mombasa_montage.png/640px-Mombasa_montage.png", event: "Clubing", date: 12, time: 11)
destination3 = Destination.create(place: "Kisumu",  image:"https://images.pexels.com/photos/5285503/pexels-photo-5285503.jpeg?auto=compress&cs=tinysrgb&w=600", event: "Swimming", date: 14, time: 10)
destination4 = Destination.create(place: "Nakuru",  image:"https://images.pexels.com/photos/7734639/pexels-photo-7734639.jpeg?auto=compress&cs=tinysrgb&w=600", event: "Eating_competation", date: 16, time:8)
destination5 = Destination.create(place: "Meru",  image:"https://meru.go.ke/assets/image/gallery/1624827600_248832578_3944397019.jpg", event: "Hiking", date: 17, time: 9)

