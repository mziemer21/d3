class AdminInspectController < ApplicationController
  def adminInspect
        @userID = params[:userID]
        
        @user = User.find(@userID)
        
        @privileges = Privilege.find(@userID)
        
  end
end
