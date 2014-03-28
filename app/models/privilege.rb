class Privilege < ActiveRecord::Base
  
  belongs_to :user

  # a false value will validate to false -> see below
  #validates :qDrive, :addSong, :editSong, :deleteSong, presence: true
  #validates :grantPermission, :addUser, :editUser, :deleteUser, presence: true

  validates_inclusion_of :qDrive, in [true, false]
  validates_inclusion_of :addSong, in [true, false]
  validates_inclusion_of :editSong, in [true, false]
  validates_inclusion_of :deleteSong, in [true, false]
  validates_inclusion_of :grantPermission, in [true, false]
  validates_inclusion_of :addUser, in [true, false]
  validates_inclusion_of :editUser, in [true, false]
  validates_inclusion_of :deleteUser, in [true ,false]
  
  def privilege
    @privilege
  end
  
  def privilege=(val)
    @privilege=val
  end
end
