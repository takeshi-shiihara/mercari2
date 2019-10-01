Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resources :item ,only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'step0' => 'main#step0'
  get 'step2' => 'main#step2'
  get 'step3' => 'main#step3'
  get 'step4' => 'main#step4'
  get 'step5' => 'main#step5'
  get 'logout' => 'main#logout'
  get 'userinfomation' => 'main#userinfomation'
  get 'hop1' => 'item#hop1'
  get 'mypage' => 'main#mypage'

end