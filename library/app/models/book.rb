class Book < ActiveRecord::Base
  GENRE = [sci-fi, thriller, romance, classic, poetry, children]
  validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, presence: true
  validates :abstract length: { minimum: 15 }
  validates :pages, :total_in_library, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :genre, inclusion: { in: GENRE }
 has_many :reservations
  
  
end
