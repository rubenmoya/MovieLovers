require "sinatra"
require "sinatra/reloader"
require_relative "./lib/movie_lovers"
require_relative "./lib/imdb_searcher_fake"

searcher = IMDBSearcher.new
movielovers = MovieLovers.new searcher

get "/" do
  erb :home
end

post "/" do
  @movies = movielovers.get_movies(params[:movie_name])
  movielovers.generate_winner
  @winner = movielovers.winner

  erb :movies
end
