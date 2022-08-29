class Users::DashboardController < Users::UsersController
    def index
        authorize([:users, :dashboard])
    end
end