$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'rspec'
require 'email-example-spec'

ActionMailer::Base.view_paths = File.join(File.dirname(__FILE__), 'support/templates')

EmailExampleSpec.configure do |config|
  config.fixture_path = File.join(File.dirname(__FILE__), 'support/fixtures')
  config.record = true
end
