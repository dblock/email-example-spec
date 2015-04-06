module EmailExampleSpec
  module Fixture
    def self.read_or_record!(fixture, content)
      fixture = File.join(EmailExampleSpec.config.fixture_path, fixture) if EmailExampleSpec.config.fixture_path
      if File.exist?(fixture)
        File.read(fixture)
      elsif EmailExampleSpec.config.record
        FileUtils.mkdir_p File.dirname(fixture)
        File.open(fixture, 'wt') do |file|
          file.write(content)
        end
        content
      else
        fail "missing #{fixture}"
      end
    end
  end
end
