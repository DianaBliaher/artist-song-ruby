# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.delete_all
Song.delete_all
10.times do
  artist = Artist.new
  artist.first_name = Faker::Name.first_name
  artist.last_name = Faker::Name.last_name
  artist.genre = Faker::Music.genre
  artist.save
  10.times do
    song = Song.new
    song.title = Faker::Music.album
    song.artist_id = artist.id
    song.save
  end
end
