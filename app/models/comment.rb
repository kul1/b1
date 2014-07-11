# encoding: utf-8
class Comment
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :name, :type => String
  field :content, :type => String
  embedded_in :article, :inverse_of => :comments
  field :price, :type => Float
  # mindapp end
end
