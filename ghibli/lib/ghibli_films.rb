require "httparty"
require "json"
require "pry"
require './lib/film.rb'
require "./lib/film_search.rb"
# Display information for films from an API.
search = FilmSearch.new
films = search.film_information

films.each do |film| 
   puts film.title
   puts "Directed by: #{film.director}"
   puts "Produced by: #{film.producer}"
end

binding.pry