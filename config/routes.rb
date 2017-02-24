Rails.application.routes.draw do
  #get "post" => 'posts#index'
  get "sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap

  resources :posts
  devise_for :users
  
  root 'welcome#index'
  
end
