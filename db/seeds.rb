# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user_1 = User.create(username: 'GlumpPunk09', email: 'glmpnk@gmail.com', password: 'glmpnk123')
user_2 = User.create(username: 'BillyBoy10', email: 'bilby@hotmail.com', password: 'bilby123')

laborer_1 = Laborer.create(name: 'Raul', skill: 'carpenter', description: "Simply the best", country: 'Mexico', city: 'Tijuana', price: 110.0)
laborer_1.image.attach(io: File.open("app/assets/images/carpenter.jpeg"), filename: "carpenter.jpeg")

laborer_2 = Laborer.create(name: 'Gubber', skill: 'electrician', description: "Simply the best", country: 'USA', city: 'San Diego', price: 90)
laborer_2.image.attach(io: File.open("app/assets/images/electrician.jpeg"), filename: "electrician.jpeg")

laborer_3 = Laborer.create(name: 'Honey', skill: 'gardener', description: "Simply the best", country: 'France', city: 'Lyon', price: 80)
laborer_3.image.attach(io: File.open("app/assets/images/gardener.jpeg"), filename: "gardener.jpeg")

laborer_4 = Laborer.create(name: 'Doofus', skill: 'mason', description: "Simply the best", country: 'Argentina', city: 'Cordoba', price: 70)
laborer_4.image.attach(io: File.open("app/assets/images/mason.jpeg"), filename: "mason.jpeg")

laborer_5 = Laborer.create(name: 'Gubber', skill: 'plumber', description: "Simply the best", country: 'Chile', city: 'Valparaiso', price: 95)
laborer_5.image.attach(io: File.open("app/assets/images/plumber.jpeg"), filename: "plumber.jpeg")

reservation_1 = Reservation.create(user_id: 1, laborer_id: 1, start_date: '07 Aug 2024 21:20:49.262680000', number_days: 7)
reservation_2 = Reservation.create(user_id: 1, laborer_id: 5, start_date: '09 Oct 2024 21:20:49.262680000', number_days: 3)
reservation_3 = Reservation.create(user_id: 1, laborer_id: 3, start_date: '08 Nov 2024 21:20:49.262680000', number_days: 2)
reservation_4 = Reservation.create(user_id: 2, laborer_id: 2, start_date: '20 Dec 2024 21:20:49.262680000', number_days: 1)
reservation_5 = Reservation.create(user_id: 2, laborer_id: 4, start_date: '13 Jan 2024 21:20:49.262680000', number_days: 5)
reservation_6 = Reservation.create(user_id: 2, laborer_id: 5, start_date: '24 Feb 2024 21:20:49.262680000', number_days: 2)