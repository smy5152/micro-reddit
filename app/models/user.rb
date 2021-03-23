class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 4..12 }
  validates :email, presence: false, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :password, presence: false, length: { in: 6..16 }
end
