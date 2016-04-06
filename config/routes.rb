Rails.application.routes.draw do

  root "welcome#index"

  devise_for :users

  resources :users, only: [:show]

  # TODO -- Figure out how to redirect signed in users directly to show page
end
