class Page < ActiveRecord::Base
  attr_accessible :author, :description, :name, :reported

  has_many :ratings, :dependent => :destroy
end
