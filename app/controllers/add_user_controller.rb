class AddUserController < ApplicationController
  def addNewUser
    @privilege = Privilege.new
  end

  def addNewPrivileges
    @user = User.find(params[:userID])
    
  end
end
