# typed: strong

module Telnyx
  module Resources
    class Messages
      class Whatsapp
        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
