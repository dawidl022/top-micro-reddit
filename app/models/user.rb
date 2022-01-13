class User < ApplicationRecord
  validates_presence_of :username, :email, :password_hash
  validates_uniqueness_of :username, :email
end
