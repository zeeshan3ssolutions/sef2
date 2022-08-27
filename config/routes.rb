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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
