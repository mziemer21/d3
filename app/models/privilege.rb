class Privilege < ActiveRecord::Base

  belongs_to :user

  # a false value will validate to false -> see below
  #validates :qDrive, :addSong, :editSong, :deleteSong, presence: true
  #validates :grantPermission, :addUser, :editUser, :deleteUser, presence: true

  validates :qDrive, inclusion: { in: [true,false] }
  validates :addSong, inclusion: { in: [true,false] }
  validates :editSong, inclusion: { in: [true,false] }
  validates :deleteSong, inclusion: { in: [true, false] }
  validates :grantPermission, inclusion: { in: [true, false }
  validates :addUser, inclusion: { in: [true,false] }
  validates :editUser, inclusion: { in: [true,false] }
  validates :deleteUser, inclusion: { in: [true,false] }

end
