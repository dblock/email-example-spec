ExampleExampleSpec
==================

[![Build Status](https://travis-ci.org/dblock/email-example-spec.png)](https://travis-ci.org/dblock/email-example-spec)
[![Gem Version](https://badge.fury.io/rb/email-example-spec.svg)](http://badge.fury.io/rb/email-example-spec)

VCR for e-mail templates.

## Install

```ruby
gem 'email-example-spec'
```

## Configure

Configure the root directory of your mail fixtures in *spec/spec_helper.rb*.

```ruby
EmailExampleSpec.configure do |config|
  config.record = true # record new e-mails, don't commit this!
  config.fixture_path = File.join(Rails.root, 'spec/support/fixtures/emails')
end
```

## Use

```ruby
describe WelcomeMailer do
  let(:user) { User.new }
  subject do
    WelcomeMailer.welcome(user)
  end
  it 'works' do
    expect(subject).to match_email_example_in 'welcome_mail.txt'
  end
end
```

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md).

## Copyright and License

Copyright (c) 2015, Daniel Doubrovkine, Artsy and [Contributors](CHANGELOG.md).

This project is licensed under the [MIT License](LICENSE.md).
