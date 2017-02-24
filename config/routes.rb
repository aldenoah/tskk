Rails.application.routes.draw do
  #get "post" => 'posts#index'
  get "sitemap.xml" => "sitemap#index", :format => "xml", :as => :sitemap

  resources :posts, path: "kota-kinabalu"
  devise_for :users
  
  root 'welcome#index'
  
end
