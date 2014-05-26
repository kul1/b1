# encoding: utf-8
class Author
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :name, :type => String
  field :pic, :type => String
  field :detail, :type => String
  field :attach, :type => String
  # mindapp end
end
