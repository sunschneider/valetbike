Rails.application.routes.draw do
  
  root to: "sessions#home"
  
  resources :users, :except => [:index]
  get 'users/delete'
  
  get 'login', to: 'sessions#login'
  get 'stations', to: 'stations#index'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'
  
end