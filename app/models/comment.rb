class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_presence_of :body, :post_id, :user_id
end
