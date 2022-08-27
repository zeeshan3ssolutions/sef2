class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    layout :set_layout

    def set_layout
      user_signed_in? ? "application" : "auth"
    end
end
