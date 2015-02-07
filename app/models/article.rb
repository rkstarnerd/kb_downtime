require 'elasticsearch/model'

class Article < ActiveRecord::Base
  belongs_to :user

  validates :question, presence: true, length: {minimum: 3}

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end

Article.import # for auto sync model with elastic search