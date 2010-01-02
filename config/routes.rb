ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.resources :users

  map.resources :memberships

  map.resources :messages

  map.resources :discussions

  map.resources :groups

  map.resources :discussions

  map.resources :user_sessions
  
  map.root :discussions
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :users
  map.resources :articles
  map.resources :comments
  
  map.resources :discussions
  
end
