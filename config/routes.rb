Rails.application.routes.draw do
  resources :order_products
  mount_devise_token_auth_for 'Distributor', at: 'distrib_path'

  mount_devise_token_auth_for 'Retailer', at: 'retai_path'
  as :retailer do
    # Define routes for Retailer within this block.
  end
  resources :comments
  resources :orders
  resources :routes
  resources :offered_products
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
