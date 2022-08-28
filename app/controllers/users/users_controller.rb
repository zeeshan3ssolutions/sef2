class Users::UsersController < ApplicationController
    include Pundit::Authorization
end