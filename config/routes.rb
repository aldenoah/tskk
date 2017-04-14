Rails.application.routes.draw do
  get "privacy-policy" => "welcome#privacy_policy"
  get "contact-us" => "contacts#new"
  get "sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap

  resources :contacts
  #get "post" => 'posts#index'

  resources :posts
  devise_for :users
  
  get '*unmatched_route', to: 'application#raise_not_found'

  root 'welcome#index'
  
end
