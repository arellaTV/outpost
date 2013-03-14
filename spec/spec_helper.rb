ENV["RAILS_ENV"] = "test"

require 'bundler'
Bundler.require :default, :test

Combustion.initialize! :active_record, :action_controller

require 'rspec/rails'
require 'rspec/autorun'
require 'factory_girl'
load 'factories.rb'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.order = "random"
  config.infer_base_class_for_anonymous_controllers = false
end
