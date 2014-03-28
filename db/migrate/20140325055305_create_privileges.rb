class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do
      boolean :qDrive
      boolean :addSong
      boolean :editSong
      boolean :deleteSong
      boolean :grantPermission
      boolean :addUser
      boolean :editUser
      boolean :deleteUser

      timestamps
    end
  end
end
