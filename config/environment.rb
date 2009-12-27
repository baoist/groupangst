RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'chriseppstein-compass', :lib => 'compass', :source => 'http://gems.github.com/'
  config.gem 'haml', :lib => 'haml'
  config.gem "authlogic"
  
  config.time_zone = 'UTC'
  
end