Rails.application.routes.draw do
  devise_for :users
  root 'stores#index'
  resources :stores do
    resources :categories do
      resources :products do
        resources :suppliers do
          resources :vendors

        end


      end

    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
