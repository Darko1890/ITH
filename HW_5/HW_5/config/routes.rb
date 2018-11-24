Rails.application.routes.draw do
  root 'sessions#new'
resources :sessions
resources :users

post '/login' => 'sessions#create'

post '/users' => 'users#create'

namespace :admin do

  resources :countries do
    resources :cities do
      resources :planes do
        resources :passengers do
          resources :tickets
        end
      end
    end
  end
end
end
