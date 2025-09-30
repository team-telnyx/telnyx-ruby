# typed: strong

module Telnyx
  module Resources
    class MessagingHostedNumbers
      # Delete a messaging hosted number
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberDeleteResponse)
      end
      def delete(
        # Identifies the type of resource.
        id,
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
