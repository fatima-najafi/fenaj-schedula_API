class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :sessions, through: :reservations

  validates_presence_of :email
  validates_uniqueness_of :email
end
