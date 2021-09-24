Rails.application.routes.draw do
  resources :check_items
  resources :favorites
  resources :order_details
  resources :line_items
  resources :carts
  get 'products/index'

  

  devise_for :users
  resources :maker_types
  resources :types
  resources :makers
  resources :areas
  resources :taggings
  resources :tags
  resources :books
  resources :areas, except: :show #編集
  resources :tags, except: :show #
  resources :users
  
  resources :article
  
  resources :products
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    get'/user/sign_out' => 'devise/session#destroy'
  end
  
  root to:'mypage#index'
  get :mypage, to: 'mypage#index'
  
  resources :orders, only: [:index, :show, :new, :create] do
    collection do
      post :confirm
    end
  end
end
