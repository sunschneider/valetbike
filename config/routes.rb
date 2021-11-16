Rails.application.routes.draw do

  root to: "stations#index"

  resources :users, :except => [:index]
  get 'user/delete'

  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  get 'user/settings'
  get 'stations/map'
  get 'user/stats'


  get 'users/delete'
  
  get 'login', to: 'sessions#login'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'

end
