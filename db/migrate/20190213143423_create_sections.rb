class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.integer :song_id
      t.string :section_type

      t.timestamps
    end
  end
end
