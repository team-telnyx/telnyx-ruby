# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class Messaging
        # Retrieve a phone number with messaging settings
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::MessagingRetrieveResponse)
        end
        def retrieve(
          # Identifies the type of resource.
          id,
          request_options: {}
        )
        end

        # Update the messaging profile and/or messaging product of a phone number
        sig do
          params(
            id: String,
            messaging_product: String,
            messaging_profile_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::MessagingUpdateResponse)
        end
        def update(
          # The phone number to update.
          id,
          # Configure the messaging product for this number:
          #
          # - Omit this field or set its value to `null` to keep the current value.
          # - Set this field to a quoted product ID to set this phone number to that product
          messaging_product: nil,
          # Configure the messaging profile this phone number is assigned to:
          #
          # - Omit this field or set its value to `null` to keep the current value.
          # - Set this field to `""` to unassign the number from its messaging profile
          # - Set this field to a quoted UUID of a messaging profile to assign this number
          #   to that messaging profile
          messaging_profile_id: nil,
          request_options: {}
        )
        end

        # List phone numbers with messaging settings
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::PhoneNumberWithMessagingSettings
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
