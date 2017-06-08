Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'dashboard/main'

  get 'dashboard/user'

  get 'dashboard/blog'

  resources :portfolios, except: [:show] do
     put :sort, on: :collection
   end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'angular-items', to: 'portfolios#angular_portfolio_items'
  get 'rails-items', to: 'portfolios#rails_portfolio_items'

  root 'pages#home'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
