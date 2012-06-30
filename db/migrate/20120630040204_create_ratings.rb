class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :page_id
      t.string :name
      t.string :summary
      t.text :content
      t.decimal :rating
      t.boolean :reported

      t.timestamps
    end
  end
end
