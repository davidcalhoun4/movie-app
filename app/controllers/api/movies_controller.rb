class Api::MoviesController < ApplicationController

  # before_action :authenticate_admin, except: [:index, :show]
  
  def index
    @movies = Movie.all 

    #Make the Movie index action only show movies that are in english.
    # @movies = Movie.where("english = ?", true).order(title: :asc)
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
      image: params[:image]
    )
    if @movie.save 
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.image = params[:image] || @movie.image

    if @movie.save 
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy

    render json: {message: "you did it... its destroyed..."}
  end



end
