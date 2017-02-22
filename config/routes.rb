Rails.application.routes.draw do
  #get "post" => 'posts#index'

  resources :posts, path: "kota-kinabalu"
  devise_for :users
  
  root 'welcome#index'
  
end
