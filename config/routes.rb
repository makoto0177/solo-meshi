Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :posts, only: [:new, :create]
  resources :shops, only: %i[index show]

  get "up" => "rails/health#show", as: :rails_health_check
end
