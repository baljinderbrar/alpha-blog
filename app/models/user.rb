class User < ActiveRecord::Base
  has_many :articles
  
  before_save { self.email = email.downcase }
  
  VALIDATE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 2, maximum: 50}
  validates :email, presence: true,  uniqueness: {case_sensitive: false}, 
      format: {with: VALIDATE_EMAIL_REGEX}, length: {minimum: 3, maximum: 255}
end