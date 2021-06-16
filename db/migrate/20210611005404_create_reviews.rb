class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.integer :sneaker_id, null: false
      t.timestamps
    end
    add_index :reviews, :user_id
    # create index for specific combination
    add_index :reviews, [:sneaker_id, :user_id], unique: true
  end
end
