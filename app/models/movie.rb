class Movie < ApplicationRecord

  validates :title, uniqueness: true
  validates :year, presence: true
  validates :plot, length: { minimum: 10 }
  validates :director, presence: true 

  has_many :actors 

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map do |genre|
      genre.name
    end
  end


end
