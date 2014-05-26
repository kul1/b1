# encoding: utf-8
class Article
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :name, :type => String
  field :content, :type => String
  field :belogn_to, :type => Author
  field :published_on, :type => Date
  embeds_many :comments
  # mindapp end
end
