class Book < ActiveRecord::Base
  GENRE = ['sci-fi', 'thriller', 'romance', 'classic','poetry', 'children']
  validates :isbn, :title, :abstract, :pages, :genre, :published_on, presence: true
  validates :abstract, length: { minimum: 15 }
  validates :pages, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :genre, inclusion: { in: GENRE }
 has_many :reservations
  
end

