class AddLikesColumnToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :likes, :integer, default: 0 
  end
end
