$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'email-example-spec/version'

Gem::Specification.new do |s|
  s.name = 'email-example-spec'
  s.version = EmailExampleSpec::VERSION
  s.authors = ['Daniel Doubrovkine']
  s.email = 'dblock@dblock.org'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.files = Dir['**/*']
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/dblock/email-example-spec'
  s.licenses = ['MIT']
  s.summary = 'Integration testing with e-mail examples.'
  s.add_dependency 'actionmailer'
end
