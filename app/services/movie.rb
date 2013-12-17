class Movie

  attr_reader :movies

  def initialize()
    @movies = []
    Dir.glob("/Volumes/Movies/*/*.{mkv,avi,mov,mp4}").each do |movie|
      @movies << movie.split("Movies/").last
    end

  end

end
require 'json'
require 'open-uri'
require 'pp'

movie  = Movie.new
pp movie.movies[0].split("/").first
json = JSON.parse(open("http://imdbapi.org?q='Across the line'") { |x| x.read }).first
pp json

