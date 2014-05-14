class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :reservations
  has_many :books, through: :reservations
  has_secure_password
  
end
