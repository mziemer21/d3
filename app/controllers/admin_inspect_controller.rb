class AdminInspectController < ApplicationController
  def adminInspect
        @user = User.find(params[:user])
        
  end
end
