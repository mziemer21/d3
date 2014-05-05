class AdminInspectController < ApplicationController
  def adminInspect
        @userID = params[:userID]
        
        @user = User.find(@userID)
        
        @privilege = Privilege.find(@userID)
        
  end
end
