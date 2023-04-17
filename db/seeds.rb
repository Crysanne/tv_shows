# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   tv_shows = tv_show.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", tv_show: tv_shows.first)
require "open-uri"
TvShow.destroy_all
User.destroy_all

user = User.create(email: "owner@gmail.com", password: "123456")

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/download-1_pqbxem.jpg")
tv_show = TvShow.create(title: "Spinning Out", year: "2020", genre: "Drama", synopsis:"A series about ice-skating, team-work and falling in love", user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637595/download_ymsciz.jpg")
tv_show = TvShow.create(title: "Virgin River", year: "2022", genre: "Romance", synopsis:"The journey of Mel a nurse moves to a small town in north Carolina",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/download-3_azxbom.jpg")
tv_show = TvShow.create(title: "YOU", year: "2023", genre:"Thriller", synopsis:"Stalking, love and murder", user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/download-2_t6mslv.jpg")
tv_show = TvShow.create(title: "Selling Sunset", year: "2022", genre: "Reality", synopsis:"Reality TV show of real estate agents",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/download-7_wrouzv.jpg")
tv_show = TvShow.create(title: "Friends", year: "2003", genre: "Comedy", synopsis:"The most loved comedy of all time",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637595/download-9_utjqjf.jpg")
tv_show = TvShow.create(title: "Full Swing", year: "2023", genre: "Docuseries", synopsis:"Docuseries about golf",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/7-13_xsf1or.jpg")
tv_show = TvShow.create(title: "Peaky Blinders", year: "2022", genre: "Crime", synopsis:"Gambling and Gangs - crime thriller that will keep you engrossed",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/images-1_lm3qfi.jpg")
tv_show = TvShow.create(title: "Drive to Survive", year: "2023", genre: "Docuseries", synopsis:"Diving deeper into Formula One",  user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save

file = URI.open("https://res.cloudinary.com/don85v6ji/image/upload/v1681637596/images-2_in8l13.jpg")
tv_show = TvShow.create(title: "The Crown", year: "2022", genre: "Political", synopsis:"The story of the royal family fron the very beginning", user:user)
tv_show.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
tv_show.save
