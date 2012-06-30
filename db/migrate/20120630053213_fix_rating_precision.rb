class FixRatingPrecision < ActiveRecord::Migration
  def up
    change_table :ratings do |t|
      t.change :rating, :decimal, :precision => 10, :scale => 2
    end
  end

  def down
    change_table :ratings do |t|
      t.change :rating, :decimal, :precision => 10, :scale => 0
    end
  end
end
