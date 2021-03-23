class Post < ApplicationRecord
  has_one :user_id
  validates_associated :user_id

  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 50 }
end
