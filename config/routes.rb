Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #users actions


  get 'home', to: 'users#home'

  get 'signup', to: 'users#signup'
  post '/signup', to: 'users#new_sign_up'

  get 'login', to: 'users#login'
  post '/login', to: 'sessions#logged_in'

  get "/users/:id", to: 'users#show'
  get '/logout', to: 'users#logout'

  get "/auth/google_oauth2"


   # implement resources but get an understanding first.
      #Vehicle action
   resources :vehicles, only: [:index, :show, :new, :create, :edit, :update]
  

   #Vehicle Ratings
   resources :ratings, only: [:new, :show, :create]



end
