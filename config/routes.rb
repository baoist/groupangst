ActionController::Routing::Routes.draw do |map|
  map.resources :discussions

  map.resources :user_sessions

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :user_sessions
  map.resources :users
  map.resources :articles
  map.resources :comments
  map.root :controller => 'discussions'
end
