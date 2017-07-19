Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'
  post 'order_complete' => 'cart#order_complete'
  
  devise_for :users
  get 'users' => 'users#index'
  post 'users/update' => 'users#update'
  
  get 'store_front/all_items'

  get 'store_front/items_by_category'

  get 'store_front/items_by_brand'

  root 'store_front#all_items'

  get 'categorical' => 'store_front#items_by_category'
  get 'branding' => 'store_front#items_by_brand'

  resources :products

  delete 'line_item/destroy' => 'line_item#destroy'
  post 'line_item/update' => 'line_item#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
