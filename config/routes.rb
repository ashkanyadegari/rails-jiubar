Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get "/id/:open_id", to: "users#get_id", as: :id
      post "/image", to: "caterings#image"
      resources :caterings do
        resources :reservations
        resources :items
        resources :reviews
      end
      resources :reservations do
        resources :reviews
      end
      resources :users do
        resources :reservations
        resources :caterings
      end
    end
  end
  post '/login', to: 'login#login'
end
