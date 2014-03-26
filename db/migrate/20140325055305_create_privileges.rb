class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.boolean :qDrive
      t.boolean :addSong
      t.boolean :editSong
      t.boolean :deleteSong
      t.boolean :grantPermission
      t.boolean :addUser
      t.boolean :editUser
      t.boolean :deleteUser

      t.timestamps
    end
  end
end
