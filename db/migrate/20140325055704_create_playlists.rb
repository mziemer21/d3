class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :user
      t.string :title
      t.boolean :qDrive
      t.text :notes

      t.timestamps
    end
  end
end
