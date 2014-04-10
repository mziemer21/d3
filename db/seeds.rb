# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Privilege.create(qDrive: false, addSong: false, editSong: false, deleteSong: false, grantPermission: true, addUser: false, editUser: true, deleteUser: false)
Privilege.create(qDrive: true, addSong: false, editSong: false, deleteSong: false, grantPermission: true, addUser: false, editUser: true, deleteUser: false)

