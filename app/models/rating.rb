class Rating < ActiveRecord::Base
  attr_accessible :content, :name, :page_id, :rating, :reported, :summary
end
