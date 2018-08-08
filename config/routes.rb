Rails.application.routes.draw do

  resources :restaurants, except: [:update, :delete] do
    resources :reviews, only: [:index, :new, :create]
  end

  resources :reviews, only: [:show, :edit, :update, :destroy]

  namespace :admin do
    resources :restaurants, only: [:update, :delete]
  end

end
