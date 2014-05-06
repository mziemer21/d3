class AdminInspectController < ApplicationController
  def adminInspect
        @userID = params[:userID]
        
        @privilege = Privilege.find_by_user_id(@userID)
        
        @user = User.find(@userID)
  end
  
  def updatePrivilege
    
    @privilege2 = Privilege.find_by_user_id(:userID)
    
    @privilege2.update_attributes(params[:privilege])
  end
end
