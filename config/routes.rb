Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :experiences do
    resources :experiencings, only: [:new, :create]
  end

  resources :experiencings, only: [:index]

  get '/mon-compte', to: "pages#mon_compte"


end
