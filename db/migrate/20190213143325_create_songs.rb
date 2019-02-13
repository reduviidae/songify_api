class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :likes
      t.boolean :complete

      t.timestamps
    end
  end
end
