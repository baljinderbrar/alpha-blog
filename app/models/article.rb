class Article < ActiveRecord::Base
  belongs_to :user
  
  validates :title, length: {minimum: 3, maximum: 50}
  validates :description, length: {minimum: 3, maximum: 5000}
  validate :user_id, presence: true
end