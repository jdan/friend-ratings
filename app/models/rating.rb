class Rating < ActiveRecord::Base
  attr_accessible :content, :name, :page_id, :reported, :summary

  belongs_to :page
end
