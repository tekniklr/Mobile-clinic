class Blurb < ActiveRecord::Base
  attr_accessible :content
  
  validates_presence_of   :name
  validates_uniqueness_of :name
  validates_length_of     :name, :maximum => 42
  
  default_scope :order => "name asc"
end
