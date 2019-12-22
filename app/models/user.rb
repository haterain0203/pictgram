class User < ApplicationRecord
  validates :name, presence: true,length: { maximum: 15}
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[A-Za-z\d]{8,32}+\z/
  validates :password,format: { with: VALID_PASSWORD_REGEX}
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, format: {with: VALID_EMAIL_REGEX}
  
  has_secure_password
  
  has_many :topics
  
end
