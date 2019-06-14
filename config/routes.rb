Rails.application.routes.draw do
  root 'messages#index'

  resources :messages

  namespace :admin do
  	devise_for :users

    root 'dashboard#index'

    resources :messages do
      resources :answers
    end
  end
end
