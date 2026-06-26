Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  resources :photos
  resources :posts do
    resources :comments, only: %i[ create destroy ]
  end
end
