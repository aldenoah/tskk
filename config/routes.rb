Rails.application.routes.draw do
  get "contact" => "contacts#new"

  resources :contacts
  get '*unmatched_route', to: 'application#raise_not_found'
  #get "post" => 'posts#index'
  get "sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap

  resources :posts
  devise_for :users
  
  root 'welcome#index'
  
end
