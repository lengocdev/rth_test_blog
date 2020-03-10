class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 40}
  validates :content, presence: true, length: { minimum: 10, maximum: 400}
  validates :user_id, presence: true
  before_save { self.email = email.downcase }
end