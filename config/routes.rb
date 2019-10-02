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
  resources :item ,only: [:show, :new, :create, :destroy]
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
      get 'buypage', to: 'purchase#buypage'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end

  get 'login' => 'main#login'
  get 'step3' => 'main#step3'
  get 'step4' => 'main#step4'
  get 'step5' => 'main#step5'
  get 'logout' => 'main#logout'
  get 'userinfomation' => 'main#userinfomation'
  get 'hop1' => 'item#hop1'
  get 'mypage' => 'main#mypage'
  get 'mypage/profile' => 'main#profile'
  get 'mypage/card' => 'main#card'
  get 'mypage/listing' => 'main#listing'
  post '/pay' => 'item#pay'


end