require 'imdb'
require 'ascii_charts'

class ImdbMovies
    attr_accessor :array
	def initialize 
        @movies = {}
		search_movies
        get_histogram
	end

	def search_movies
        IO.readlines('movies.txt').each_with_index do |line, index|
            movie_query = Imdb::Search.new(line)
            movie = movie_query.movies.first

            movie_title = movie.title
            movie_rating = movie.rating.round

            @movies[index] = movie_rating
        end
    end

    def get_histogram 
        matrix_movie_ratings = (0...@movies.size).to_a.map {|movie| [movie, @movies[movie]]}
        puts AsciiCharts::Cartesian.new(matrix_movie_ratings, :bar => true, :hide_zero => true).draw
    end
end

imdb = ImdbMovies.new
