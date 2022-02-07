# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

file = "db/pokemon.csv"
CSV.foreach( file, :headers => true) do |row|
  Pokemon.create( 
    :name => row[1],
    :type1 => row[2],
    :type2 => row[3],
    :total => row[4],
    :hp => row[5],
    :attack => row[6],
    :defense => row[7],
    :sp_atk => row[8],
    :sp_def => row[9],
    :speed => row[10],
    :generation => row[11],
    :legendary => row[12]
  )
end