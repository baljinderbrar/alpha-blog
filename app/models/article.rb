class Article < ActiveRecord::Base
  validates :title, length: {minimum: 3, maximum: 50}
  validates :description, length: {minimum: 3, maximum: 5000}
end