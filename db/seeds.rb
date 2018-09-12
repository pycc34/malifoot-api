# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Club.create(name: "Djoliba", logo: "logo djoliba", description: "equipe creer vers les annees 60, se trouve au coeur de bamako", stadium: "Heremakono")
Player.create(name: "massire dembele",age: 20,position: "milieu", foot: "droit", country: "Mali",club_id: 1)
