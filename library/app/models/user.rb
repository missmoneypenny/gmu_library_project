class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has many :reservations
  has many :books, through: :reservations
  has_secure_password
  
end
