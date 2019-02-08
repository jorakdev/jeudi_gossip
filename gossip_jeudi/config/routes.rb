Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/connected_user', to: 'connectes#connected'
  resources :sessions, only: [:new, :create, :destroy]
end
