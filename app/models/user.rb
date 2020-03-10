class User < ActiveRecord::Base
  has_many :posts
  has_secure_password
  validates :username, presence: true, uniqueness: { case_sensitive: false}, length: { minimum: 3, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: true, length: { maximum: 105}, format: { with: VALID_EMAIL_REGEX}
end