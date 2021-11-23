Rails.application.routes.draw do
  
  get 'bikes/show'
  root to: "sessions#home"
  

  resources :users, :except => [:index]
  get 'user/delete'
  
  resources :stations do
    resource :bike
  end

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get 'user/settings'
  get 'stations/map'
  get 'user/stats'


  get 'users/delete'
  
  get 'login', to: 'sessions#login'
  get 'stations', to: 'stations#index'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'

  
end


#end

