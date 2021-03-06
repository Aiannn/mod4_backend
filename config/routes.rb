Rails.application.routes.draw do
  resources :quotes
  resources :tasks
  
  namespace :api do
    namespace :v1 do 
      #Signup route
      resources :users
      #Login route
      post '/login', to: 'auth#create'
      #Retrieve user route
      get '/profile', to: 'users#profile'
      patch '/profile', to: 'users#update'
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
