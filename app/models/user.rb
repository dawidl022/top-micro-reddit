class User < ApplicationRecord
  has_many :posts

  validates_presence_of :username, :email, :password_hash
  validates_uniqueness_of :username, :email
end
