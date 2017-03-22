class HomesController < ApplicationController
  

  # GET /homes
  # GET /homes.json
  def index
    if user_signed_in?
      redirect_to packages_path
    else
      redirect_to new_user_session_path
    end
  end

  
end
