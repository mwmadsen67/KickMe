class CreateSneakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers do |t|
      t.string :name, null: false
      t.string :color
      t.integer :price, null: false
      t.timestamps
    end

    add_index :sneakers, :name
  end
end
