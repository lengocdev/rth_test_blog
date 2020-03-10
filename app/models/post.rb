class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 40}
  validates :content, presence: true, length: { minimum: 10, maximum: 400}
end