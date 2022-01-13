class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :user_id

  validate :url_or_body_present

  def url_or_body_present
    unless url.present? || body.present?
      errors.add(:body, "or URL must have a value (at least one of the two)")
    end
  end
end
