Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end
  resources :reviews
  root "restaurants#index"
end
