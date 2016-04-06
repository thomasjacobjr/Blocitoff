Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :items
  end

  root "users#show"

end
