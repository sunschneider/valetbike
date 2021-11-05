Rails.application.routes.draw do
  
  root to: "stations#index"
  
  resources :users, :except => [:index]
  get 'user/delete'
  
  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  
  
  
  #default route (keep at bottom)
  get ':controller(/:action(/:id))'
  
end
