class Page < ActiveRecord::Base
  attr_accessible :author, :description, :name, :question, :answer

  has_many :ratings, :dependent => :destroy
end
