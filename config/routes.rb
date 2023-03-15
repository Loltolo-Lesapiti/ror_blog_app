Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts do
          resources :likes
          resources :comments
    end
  end

  root "users#index"

end
