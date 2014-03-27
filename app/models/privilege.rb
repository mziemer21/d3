class Privilege < ActiveRecord::Base

  belongs_to :user

  boolList = [:qDrive, :addSong, :editSong, :deleteSong, :grantPermission, :addUser :edituser, :deleteUser]

  for b in boolList
          validates b, presence: true
          default: false
  end 

end
