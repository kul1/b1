# encoding: utf-8
class Location
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :address, :type => String
  field :latitude, :type => Float
  field :longitude, :type => Float
  field :coordinate, :type => Array
  attr_accessible :address, :latitude, :longitude
   geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  # mindapp end
end
