class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  VALID_PASSWORD_REGERX = /\A[A-Za-z0-9]+\z/ 
  validates :password,presence:true, length:{minimum:8,maximum:32},format: { with: VALID_PASSWORD_REGERX}

  has_secure_password
  
end
