Rails.application.routes.draw do
  devise_for :users

  resources :foundations do
    resources :events, only: [:new, :create, :edit, :update, :destroy]
    member do
      post 'add_favorite'
      delete 'remove_favorite'
    end
  end

  get 'foundations/analytics', to: 'foundations#analytics'
  get 'foundations/recommendations', to: 'foundations#recommendations'


  root 'foundations#index'
end
