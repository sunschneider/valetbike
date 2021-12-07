Rails.application.routes.draw do

  root to: "sessions#home"




  resources :users, :except => [:index]
  get 'user/delete'

  resources :stations do
    resource :bike
  end

  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get '/settings', to: 'users#settings'
  get '/stats', to: 'users#stats'
  get 'stations/map'
  get '/users/settings', to: 'users#settings'
  get '/users/stats', to: 'users#stats'

  get 'users/delete'

  get 'login', to: 'sessions#login'
  get 'sessions/destroy'
  get 'stations', to: 'stations#index'
  get 'bikes/checkout', to: 'bikes#checkout'



  #default route (keep at bottom)
  get ':controller(/:action(/:id))'


end


#end
