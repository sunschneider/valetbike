Rails.application.routes.draw do
  
  root to: "sessions#home"
  

  resources :users, :except => [:index]
  get 'user/delete'
  
  resources :stations do
    resource :bike
  end

  get 'bikes/show'
  post 'login', to: 'session#create'
  get 'user/settings'
  get '/stations/map', to: 'stations#map', as: :stations_map
  #get 'stations/show'
  get 'user/stats'


  get 'users/delete'
  
  get 'login', to: 'sessions#login'
  get 'stations', to: 'stations#index'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'

  
end


#end

