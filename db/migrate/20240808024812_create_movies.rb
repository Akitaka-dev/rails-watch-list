class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.string :poster_url, null: false
      t.float :rating, null: false

      t.timestamps
    end
  end
end
