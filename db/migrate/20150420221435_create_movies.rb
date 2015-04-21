class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :body
      t.string :year
      t.string :run_time

      t.timestamps null: false
    end
  end
end
