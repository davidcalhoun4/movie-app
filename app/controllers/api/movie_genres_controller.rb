class Api::MovieGenresController < ApplicationController


  def show
    @movie_genres = MovieGenre.find_by(id: params[:id])
    render "show.json.jb"
  end


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
