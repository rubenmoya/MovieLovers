require "pry"

class MovieLovers
  attr_reader :winner

  def initialize movie_searcher
    @movie_searcher = movie_searcher
    @movies = []
  end

  def get_movies title
    @movies = @movie_searcher.search_by_title(title)
  end

  def generate_winner
    @winner = @movies[rand(@movies.size)]
  end
end
