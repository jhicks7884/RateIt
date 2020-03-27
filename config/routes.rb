Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
       #users actions
       # implement resources but get an understanding first.

  get 'home', to: 'users#home'

  get 'signup', to: 'users#signup'
  post '/signup', to: 'users#new_sign_up'

  get 'login', to: 'users#login'
  post '/login', to: 'sessions#logged_in'

  get '/users/:id', to: 'users#show'
  get '/logout', to: 'users#logout'

      #Vehicle action

   get "/vehicles/new", to: 'vehicles#new'
   get "/vehicles/:id", to: 'vehicles#show'
   post "/vehicles/selections", to: 'vehicles#create_vehicles'
   get "/vehicles/index", to: 'vehicles#index'

   #Vehicle Ratings

   get "/ratings/new", to: 'ratings#new'
   #get "/ratings/:id", to: 'ratings#show'
   post "/ratings/new", to: 'ratings#create'


end
