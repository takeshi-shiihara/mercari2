Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'step2' => 'main#step2'
  get 'step3' => 'main#step3'
  get 'step4' => 'main#step4'
  get 'step5' => 'main#step5'


end
