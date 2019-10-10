Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                registrations: 'users/registrations'}
                root 'main#index' 
  get 'purchase/index'
  get 'purchase/done'
  get 'card/new'
  get 'card/show'
  root 'main#index'

  resources :item ,only: [:new, :create, :edit, :update, :show, :destroy]
  # do
    # collection do
    #   get 'get_category_children', defaults: { format: 'json' }
    #   get 'get_category_grandchildren', defaults: { format: 'json' }
    # end
  # end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :phone_number, only: [:new, :create]
  resources :address, only: [:new, :create]
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
      get 'new_mypage', to: 'card#new_mypage'
    end
  end

  resources :purchase, only: [:index] do
    collection do
      post 'pay/:id', to: 'purchase#pay'
      get 'done/:id', to: 'purchase#done'
      get 'buy/:id', to: 'purchase#buy'
    end
  end

  get 'login' => 'main#login'
  get 'step3' => 'main#step3'
  get 'step4' => 'main#step4'
  get 'step5' => 'main#step5'
  get 'logout' => 'main#logout'
  get 'userinfomation' => 'main#userinfomation'
  get 'search' => 'main#search'
  patch 'userinfomation' => 'main#info'
  get 'hop1' => 'item#hop1'
  get 'mypage' => 'main#mypage'
  get 'mypage/serectcard' => 'main#serectcard'
  get 'mypage/profile' => 'main#profile'
  patch 'mypage/profile' => 'main#edit'
  get 'mypage/card' => 'main#card'
  get 'mypage/listing' => 'main#listing'
  post '/pay' => 'item#pay'

  delete 'item/delete' => 'item#item_delete'

end