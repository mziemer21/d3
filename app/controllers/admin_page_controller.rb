class AdminPageController < ApplicationController
  def admin
        @users = User.order(:name)

    respond_to do |format|
      format.html
      # json for all songs specified by query param q
      format.json { render json: @users.tokens(params[:q]) }
    end
  end
end
