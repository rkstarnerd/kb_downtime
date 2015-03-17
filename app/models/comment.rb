class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates :body, presence: true
  validates :user_id, presence: true
end