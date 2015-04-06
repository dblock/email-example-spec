RSpec::Matchers.define :match_email_example_in do |expected, _options = {}|
  match do |actual|
    actual_content = EmailExampleSpec::Email::Content.encoded(actual)
    expected_content = EmailExampleSpec::Fixture.read_or_record! expected, actual_content
    actual_content == expected_content
  end
end
