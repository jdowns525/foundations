Rails.application.routes.draw do
  devise_for :users

  resources :foundations do
    resources :events, only: [:new, :create, :edit, :update, :destroy]
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

  root 'foundations#index'
end
