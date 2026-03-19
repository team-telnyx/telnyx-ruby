# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        class Profile
          class Models
            # @api private
            sig { params(client: Telnyx::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
