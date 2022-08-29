class Admin::DashboardController < Admin::AdminController
    def index
        authorize([:admin, :dashboard])  
    end
end