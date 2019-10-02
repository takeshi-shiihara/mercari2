Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resources :item ,only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  get 'phone_number' => 'main#phone_number'

  resources :phone_number, only: [:new, :create]
  resources :address, only: [:new, :create]

  get 'step0' => 'main#step0'
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
end