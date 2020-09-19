require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_movie = Movie.new
first_movie.title = "Cody"
first_movie.director = "Ady"
first_movie.year = 2020

second_movie = Movie.new
second_movie.title = "Adventure"
second_movie.director = "Ady"
second_movie.year = 2020

store.transaction do
    store["Cody"] = first_movie
    store["Advenure"] = second_movie

    p store["Cody"]
end