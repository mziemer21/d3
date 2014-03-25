json.array!(@privileges) do |privilege|
  json.extract! privilege, :qDrive, :addSong, :editSong, :deleteSong, :grantPermission, :addUser, :editUser, :deleteUser
  json.url privilege_url(privilege, format: :json)
end