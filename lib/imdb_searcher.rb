require 'imdb'

class IMDBSearcher
  def search_by_title title
    movies = Imdb::Search.new(title).movies

    get_movies_with_poster(movies).map do |movie|
      {
        id: movie.id,
        title: movie.title,
        poster: movie.poster,
        year: movie.year
      }
    end
  end

  def get_movies_with_poster movies
    movies_with_poster = []
    i = 0
    while movies_with_poster.size < 9 do
      if movies[i].poster != nil
        movies_with_poster << movies[i]
      end
      i += 1
    end
    movies_with_poster
  end
end
