ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :user_sessions
  map.resources :memberships
  map.resources :groups
  map.resources :discussions
  map.resources :messages
  
  map.root :groups
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
      
end
