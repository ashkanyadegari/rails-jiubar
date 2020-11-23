Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :caterings do
        resources :reservations
        resources :items
      end
      resources :reservations do
        resources :reviews
      end
      resources :users do
        resources :reservations
      end
    end
  end
  post '/login', to: 'login#login'
end
