# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mahmoud = Artist.create(name: "Mahmoud Ahmed", bio: "Gurage Ethiopian singer")
ethio_pop = Genre.create(name: "Ethio pop")
gichawe = Song.create(name: "Gichawe", artist_id: mahmoud.id, genre_id: ethio_pop.id)
