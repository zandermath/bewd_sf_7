class AddImageToArts < ActiveRecord::Migration
  def change
    add_column :arts, :art_image, :string
  end
end
