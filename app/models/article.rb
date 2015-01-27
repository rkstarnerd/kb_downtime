class Article < ActiveRecord::Base
  belongs_to :user

  validates :question, presence: true, length: {minimum: 3}
end