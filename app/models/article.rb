require 'elasticsearch/model'

class Article < ActiveRecord::Base
  belongs_to :user
  has_many   :comments, dependent: :destroy

  accepts_nested_attributes_for :comments

  validates :question, presence: true, length: {minimum: 3}
  validates :answer,   presence: true

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  index_name BONSAI_INDEX_NAME

  def self.search(query)
    __elasticsearch__.search(
      {
        query: {
          multi_match: {
            query: query,
            fuzziness: 'auto',
            fields: '_all'
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