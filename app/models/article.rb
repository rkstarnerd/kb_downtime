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
            type: 'cross_fields',
            fields: ['question^4','client_name^3','answer','vdn'] #TODO add search by vdn
          }
        },
        highlight: {
          pre_tags: ['<em>'],
          post_tags: ['</em>'],
          fields: {
            question: {},
            answer: {},
            client_name: {},
            vdn: {}
          }
        }
      }
    )
  end

  settings index: { number_of_shards: 1 } do
  mappings dynamic: 'false' do
    indexes :question, analyzer: 'english'
    indexes :answer, analyzer: 'english'
  end
end
end

Article.import # for auto sync model with elastic search