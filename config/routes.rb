Rails.application.routes.draw do

  root to: "stations#index"

  resources :userss, :except => [:index]
  get 'users/delete'

  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  get 'users/settings'
  get 'stations/map'
  get 'users/stats'


  #default route (keep at bottom)
  get ':controller(/:action(/:id))'

end
