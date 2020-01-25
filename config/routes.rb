Rails.application.routes.draw do
  resources :employees do
    resources :contrats, only: [:new, :create, :edit, :update]

  end

  resources :employees do
    resources :contratcdds, only: [:new, :create, :edit, :update]

  end

  resources :employees do
    collection { post :import }
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contrats, only: [:index, :destroy, :show]
  resources :contratcdds, only: [:index, :destroy, :show]

  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  resources :invoices do
    resources :reviews, only: [:create, :edit, :update]
  end
  resources :reviews, only: [:destroy]
  root to: 'employees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
