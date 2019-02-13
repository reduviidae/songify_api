class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :likes, default: 0
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
