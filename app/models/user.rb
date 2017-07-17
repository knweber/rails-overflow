class User < ApplicationRecord  
  validates :username, :email, :password, { presence: true }

  has_many :questions
  has_many :answers

  has_secure_password
end
