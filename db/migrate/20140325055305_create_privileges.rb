class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.boolean :qDrive, default: false
      t.boolean :addSong, default: false
      t.boolean :editSong, default: false
      t.boolean :deleteSong, default: false
      t.boolean :grantPermission, default: false
      t.boolean :addUser, default: false
      t.boolean :editUser, default: false
      t.boolean :deleteUser, default: false

      t.timestamps
    end
  end
end
