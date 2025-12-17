# typed: strong

module Telnyx
  module Resources
    class MessagingHostedNumberOrders
      class Actions
        # Upload hosted number document
        sig do
          params(
            id: String,
            bill: Telnyx::Internal::FileInput,
            loa: Telnyx::Internal::FileInput,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileResponse
          )
        end
        def upload_file(
          # Identifies the type of resource.
          id,
          # Must be the last month's bill with proof of ownership of all of the numbers in
          # the order in PDF format.
          bill: nil,
          # Must be a signed LOA for the numbers in the order in PDF format.
          loa: nil,
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
