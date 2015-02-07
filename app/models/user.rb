class User < ActiveRecord::Base
  has_many :articles, dependent: :destroy

  has_secure_password validations: false

  validates :username, presence: true, uniquness: true
  validates :password, presence: true, on: :create, length: {minimum: 5}
end