class DeleteUserConfController < ApplicationController
  def deleteConfirm
        @userID = params[:userID]
        
        @user = User.find(@userID)
  end
end
