class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    layout :set_layout

    private
  
    def user_not_authorized
      flash[:danger] = 'You are not authorized to perform this action.'
      redirect_to (request.referrer || root_path)
    end

    def set_layout
      user_signed_in? ? "application" : "auth"
    end
end
