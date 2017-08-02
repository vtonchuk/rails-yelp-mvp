Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, except: [:destroy, :update, :edit] do
    resources :reviews, only: [:new, :create]
  end
end
