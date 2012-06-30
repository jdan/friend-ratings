class ChangeRatingPrecision < ActiveRecord::Migration
  def change
    change_table :ratings do |t|
      t.change :rating, :decimal, :precision => 2, :scale => 2
    end
  end
end
