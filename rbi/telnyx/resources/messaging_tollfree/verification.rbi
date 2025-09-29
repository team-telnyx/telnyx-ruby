# typed: strong

module Telnyx
  module Resources
    class MessagingTollfree
      class Verification
        sig do
          returns(Telnyx::Resources::MessagingTollfree::Verification::Requests)
        end
        attr_reader :requests

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
