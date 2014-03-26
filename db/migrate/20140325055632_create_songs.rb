class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.time :duration
      t.integer :quality
      t.boolean :fccFlag
      t.boolean :is_qDrive
      t.string :location
      t.string :format
      t.text :review

      t.timestamps
    end
  end
end
