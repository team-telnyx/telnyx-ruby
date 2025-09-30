# typed: strong

module Telnyx
  module Resources
    class Messages
      class Rcs
        # Generate a deeplink URL that can be used to start an RCS conversation with a
        # specific agent.
        sig do
          params(
            agent_id: String,
            body: String,
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messages::RcGenerateDeeplinkResponse)
        end
        def generate_deeplink(
          # RCS agent ID
          agent_id,
          # Pre-filled message body (URL encoded)
          body: nil,
          # Phone number in E164 format (URL encoded)
          phone_number: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
