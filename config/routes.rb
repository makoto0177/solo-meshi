Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :shops
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end
