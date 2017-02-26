Rails.application.routes.draw do
  get "contact-us" => "contacts#new"
  get "sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap
  #get '*unmatched_route', to: 'application#raise_not_found'

  resources :contacts
  #get "post" => 'posts#index'

  resources :posts
  devise_for :users
  
  root 'welcome#index'
  
end
