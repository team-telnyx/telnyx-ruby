# typed: strong

module Telnyx
  module Resources
    class MobilePhoneNumbers
      class Messaging
        # Retrieve a mobile phone number with messaging settings
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

        # List mobile phone numbers with messaging settings
        sig do
          params(
            page: Telnyx::MobilePhoneNumbers::MessagingListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::MobilePhoneNumbers::MessagingListResponse)
        end
        def list(
          # Consolidated page parameter (deepObject style). Originally: page[number],
          # page[size]
          page: nil,
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
