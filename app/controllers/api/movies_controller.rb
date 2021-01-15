class Api::MoviesController < ApplicationController

  def single_movie_action
    @movie = Movie.first
    render "movie.json.jb"
  end

  def all_movie_action
    @movies = Movie.all 
    render "movies.json.jb"
  end
end
