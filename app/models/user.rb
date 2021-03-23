class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 4..12 }
  validates :email, presence: false, length: { maximum: 50 }
  validates :password, presence: false, length: { in: 6..16 }
end
