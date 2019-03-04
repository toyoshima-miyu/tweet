Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lab/index' => 'lab#index'
  get 'lab/link' => 'lab#link'
  root "tweets#index"
  #get 'tweets/index' => 'tweets#index'
  resources :tweets
#  root to: "tweets#index"
end
