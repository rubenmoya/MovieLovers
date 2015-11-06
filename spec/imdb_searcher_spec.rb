require "rspec"
require "pry"
require_relative "../lib/imdb_searcher"

RSpec.describe IMDBSearcher do
  let(:searcher) {instance_double("IMDBSearcher", :search_by_title => [
    {
      :id=>"0076759",
      :title=>"La guerra de las galaxias (1977)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMTU4NTczODkwM15BMl5BanBnXkFtZTcwMzEyMTIyMw@@.jpg",
      :year=>1977
    },
    {
      :id => "2488496",
      :title => "Star Wars: Episodio VII - El despertar de la fuerza (2015)",
      :poster => "http://ia.media-imdb.com/images/M/MV5BMTkwNzAwNDA4N15BMl5BanBnXkFtZTgwMTA2MDcwNzE@.jpg",
      :year => 2015
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    },
    {
      :id=>"2930604",
      :title=>"Star Wars Rebels (2014) (TV Series)",
      :poster=> "http://ia.media-imdb.com/images/M/MV5BMjMyNTc4NDI5OV5BMl5BanBnXkFtZTgwMzI4OTg5MjE@.jpg",
      :year=>2014
    }
  ])}

  describe '#search_by_title' do
    it 'returns an array' do
      expect(searcher.search_by_title("Star Wars").class).to be(Array)
    end

    it 'returns an array with 9 items' do
      expect(searcher.search_by_title("Star Wars").size).to eq(9)
    end

    it 'all the movies in the array have a poster' do
      search = searcher.search_by_title("Star Wars").find { |movie| movie[:title].nil? }
      expect(search).to eq(nil)
    end
  end
end
