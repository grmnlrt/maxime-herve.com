require 'csv'

return if Rails.env.production?

Movie.destroy_all
Game.destroy_all

options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }

puts "Start to create movies:"

CSV.foreach("#{Rails.root}/db/movies.csv", options) do |row|
  movie = Movie.create(row.to_h)
  puts "- #{movie.title} created!"
end

puts "🎬 All movies created!"
puts "Start to create games:"

CSV.foreach("#{Rails.root}/db/games.csv", options) do |row|
  game = Game.create(row.to_h)
  puts "- #{game.title} created!"
end

puts "🎮 All games created"

puts "🌱"
