require 'spec_helper'

describe 'html' do
  subject do
    Class.new(ActionMailer::Base) do
      default from: 'Joe User <joe@example.org>'

      def welcome_mail(username)
        @username = username
        mail to: 'user@example.org', subject: 'Welcome!' do |format|
          format.html { render 'rspec/match_email_example_in/welcome_mail' }
        end
      end
    end
  end
  it 'matches' do
    expect(subject.welcome_mail('username')).to match_email_example_in 'rspec/match_email_example_in/welcome_mail.html'
  end
end
