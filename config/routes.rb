Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "bikes", to: "bikes#index"
  resources :bikes, only: [:index, :new, :create, :show, :edit, :update, :bikeall, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"

  get "dashboard", to: "pages#dashboard"
end
