class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.references :user, index: true
      t.integer :rating, default: 0

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
  end
end
