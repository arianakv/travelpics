class CreateBrickells < ActiveRecord::Migration[5.0]
  def change
    create_table :brickells do |t|

      t.timestamps
    end
  end
end
