Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :caterings do
        resources :reservations
      end
      resources :reservations do
        resources :reviews
      end
    end
  end
  post '/login', to: 'login#login'
end
