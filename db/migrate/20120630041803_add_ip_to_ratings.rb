class AddIpToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :ip, :string
  end
end
