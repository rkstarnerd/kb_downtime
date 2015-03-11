class User < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  has_many :dt_crs

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 5}

  def admin?
    self.role == 'admin'
  end
end