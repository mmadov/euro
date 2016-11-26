Rails.application.routes.draw do


  scope "(:locale)", :locale => /en|ru|az/ do
      mount RailsAdmin::Engine => '/admpanel', as: 'rails_admin'

      resources :locales
  resources :pages
  resources :pagenames
  resources :partners
  resources :works
  	  resources :abouts
      resources :contact
      resources :career

  resources :services
  root to: 'site#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
