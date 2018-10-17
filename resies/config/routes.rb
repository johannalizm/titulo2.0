Rails.application.routes.draw do
  resources :instituciones
  devise_for :users, controllers: {:registrations => 'user/registrations'}
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
