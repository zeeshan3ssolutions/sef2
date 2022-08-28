Rails.application.routes.draw do
  devise_for :users, 
    :path => '',
    :path_names => { 
      :sign_in => "login",
      :sign_out => "logout",
      :sign_up => "register"
    },
    controllers: {
      sessions: 'auth/users/sessions',
      confirmations: 'auth/users/confirmations',
      passwords: 'auth/users/passwords',
      unlocks: 'auth/users/unlocks',
      registrations: 'auth/users/registrations'
  }
  namespace :admin do
    resources :dashboard, only: :index
  end
  namespace :users do
    resources :dashboard, only: :index
  end
  authenticated :user, ->(u) { u.has_role?(:admin) } do
    root to: "admin/dashboard#index", as: :admin_root
  end
  
  authenticated :user, ->(u) { u.has_role?(:user) } do
    root to: "users/dashboard#index", as: :user_root
  end
  root to: "users/dashboard#index"
end