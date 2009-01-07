ActionController::Routing::Routes.draw do |map|
  map.resources :sections
  map.resources :temp_posts
  map.resources :posts
  map.resources :main
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
