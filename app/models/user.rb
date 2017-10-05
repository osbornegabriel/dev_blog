require 'bcrypt'

class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username

  # has_many :posts
end