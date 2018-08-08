class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniquness: true
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
end
