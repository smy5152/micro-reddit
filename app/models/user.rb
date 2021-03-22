class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 4}, length: {maximum: 12}
end
