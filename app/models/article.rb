require 'elasticsearch/model'

class Article < ActiveRecord::Base
  belongs_to :user

  validates :question, presence: true, length: {minimum: 3}

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fields: ['question^4','client_name^3','vdn^3','answer']
          }
        },
        highlight: {
          pre_tags: ['<i>'],
          post_tags: ['</i>'],
          fields: {
            title: {},
            text: {}
          }
        }
      }
    )
  end
end

Article.import # for auto sync model with elastic search