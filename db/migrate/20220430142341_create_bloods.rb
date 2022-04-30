class CreateBloods < ActiveRecord::Migration[6.1]
  def change
    create_table :bloods do |t|
      t.integer :maxblood
      t.integer :minblood

      t.timestamps
    end
  end
end
