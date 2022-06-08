# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "csv"

# csv_text = File.read(Rails.root.join("lib", "seeds", "netflix_titles.csv"))
# csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
# csv.each do |row|
#   Title.create({
#     show_id: row["show_id"],
#     media_type: row["type"],
#     name: row["title"],
#     director: row["director"],
#     cast: row["cast"],
#     country: row["country"],
#     date_added: row["date_added"],
#     release_year: row["release_year"],
#     rating: row["rating"],
#     duration: row["duration"],
#     listed_in: row["listed_in"],
#     description: row["description"],
#   })
# end

# puts "There are now #{Title.count} rows in the data table"
