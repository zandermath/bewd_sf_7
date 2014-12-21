class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title
      t.boolean :available
      t.integer :artist_id
      t.integer :gallery_id
      t.integer :price

      t.timestamps
    end
  end
end
