Rails.application.routes.draw do
  resources :pregunta
  resources :instituciones
  devise_for :users, controllers: {:registrations => 'user/registrations', :confirmations =>'user/confirmations'}
  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
