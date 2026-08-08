# typed: strong

module Telnyx
  module Resources
    class MobilePhoneNumbers
      class Messaging
        # Returns the messaging configuration for the specified mobile phone number.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse
          )
        end
        def retrieve(
          # Identifies the type of resource.
          id,
          request_options: {}
        )
        end

        # Returns mobile phone numbers with their current messaging configuration.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
