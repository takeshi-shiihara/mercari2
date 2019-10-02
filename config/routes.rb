Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                registrations: 'users/registrations'}
                root 'main#index'
  resources :item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :phone_number, only: [:new, :create]
  resources :address, only: [:new, :create]

  get 'login' => 'main#login'
  get 'step3' => 'main#step3'
  get 'step4' => 'main#step4'
  get 'step5' => 'main#step5'
  get 'logout' => 'main#logout'
  get 'userinfomation' => 'main#userinfomation'
  get 'hop1' => 'item#hop1'
  get 'mypage' => 'main#mypage'

end