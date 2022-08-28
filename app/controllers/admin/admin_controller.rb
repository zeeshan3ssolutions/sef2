class Admin::AdminController < ApplicationController
    include Pundit::Authorization
end