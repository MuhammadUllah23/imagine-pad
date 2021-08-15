# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = Genre.create([
    { name: 'Literary Fiction' }, 
    { name: 'Mystery' },
    { name: 'Thriller' },
    { name: 'Horror' },
    { name: 'Historical' },
    { name: 'Romance' },
    { name: 'Western' },
    { name: 'Bildungsroman' },
    { name: 'Speculative Fiction' },
    { name: 'Science Fiction' },
    { name: 'Fantasy' },
    { name: 'Dystopian' },
    { name: 'Magical Realism' },
    { name: 'Realist Literature' },])


medias = MediaType.create([
    { name: 'Television' },
    { name: 'Radio' },
    { name: 'Cinema' },
    { name: 'Games' },
    { name: 'Magazine' },
    { name: 'Blogs' },
    { name: 'Music' },
    { name: 'Digital Communities' },
    { name: 'Podcast' },
    { name: 'Books' },
    { name: 'Graphic Design' },
    { name: 'Audio' }
])

users = User.create([
    { email: "cinnamon@gmail.com", password:"1234", username:"CinnamonJack2" },
    { email: "bookert@gmail.com", password:"1234", username:"ILoveBooks" },
    { email: "bookKeeper@yahoo.com", password:"1234", username:"BookKeeper" },
    { email: "tinylibrarian@gmail.com", password:"1234", username:"TinyLibrarian" },
    { email: "pagesorcerer45@gamil.com", password:"1234", username:"PageSorcerer45" }
])