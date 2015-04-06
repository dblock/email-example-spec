require 'action_mailer'

require 'email-example-spec/version'
require 'email-example-spec/config'
require 'email-example-spec/fixture'
require 'email-example-spec/email/content'
require 'email-example-spec/rspec/match_email_example_in'

module EmailExampleSpec
  class << self
    def configure
      block_given? ? yield(Config) : Config
    end

    def config
      Config
    end
  end
end
