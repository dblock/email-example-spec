module EmailExampleSpec
  module Email
    module Content
      def self.encoded(email)
        email = email.dup
        email.add_date Time.at(0).utc
        email.message_id = 1
        email.encoded
      end
    end
  end
end
