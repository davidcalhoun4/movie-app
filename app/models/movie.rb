class Movie < ApplicationRecord

  validates :title, uniqueness: true

  validates :year, presence: true

  validates :plot, length: { minimum: 10 }

  validates :director, presence: true 

  has_many :actors 



  #title year plot director
end
