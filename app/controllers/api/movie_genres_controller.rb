class Api::MovieGenresController < ApplicationController
  def create
    @movie_genres = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @movie_genres.save 
      render "show.json.jb"
    else
      render json: { errors: @movie_genres.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
