Rails.application.routes.draw do
  
  root to: "sessions#home"
  

  resources :users, :except => [:index]
  get 'user/delete'

  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  get 'user/settings'
  get 'stations/map'
  get 'user/stats'


  get 'users/delete'
  
  get 'login', to: 'sessions#login'
  get 'stations', to: 'stations#index'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'

  
end


end

