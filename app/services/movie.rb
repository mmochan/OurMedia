class Movie

  attr_reader :movies

  def initialize()
    @movies = Dir.glob("/Volumes/Movies/*/*.{mkv,avi,mov,mp4}")

  end

end
require 'json'
require 'open-uri'
require 'pp'

json = JSON.parse(open("http://imdbapi.org?q=Frenzy") { |x| x.read }).first

movie  = Movie.new
#puts movie.movies
pp json

