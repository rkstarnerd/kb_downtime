class User < ActiveRecord::Base
  has_many :articles, dependent: :destroy

  validates :username, presence: true, uniquness: true
end