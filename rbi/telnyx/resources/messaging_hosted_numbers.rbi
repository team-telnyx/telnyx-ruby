# typed: strong

module Telnyx
  module Resources
    class MessagingHostedNumbers
      # Retrieve a specific messaging hosted number by its ID or phone number.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberRetrieveResponse)
      end
      def retrieve(
        # The ID or phone number of the hosted number.
        id,
        request_options: {}
      )
      end

      # Update the messaging settings for a hosted number.
      sig do
        params(
          id: String,
          messaging_product: String,
          messaging_profile_id: String,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MessagingHostedNumberUpdateResponse)
      end
      def update(
        # The ID or phone number of the hosted number.
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
        # Tags to set on this phone number.
        tags: nil,
        request_options: {}
      )
      end

      # List all hosted numbers associated with the authenticated user.
      sig do
        params(
          filter_messaging_profile_id: String,
          filter_phone_number: String,
          filter_phone_number_contains: String,
          page_number: Integer,
          page_size: Integer,
          sort_phone_number:
            Telnyx::MessagingHostedNumberListParams::SortPhoneNumber::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::PhoneNumberWithMessagingSettings
          ]
        )
      end
      def list(
        # Filter by messaging profile ID.
        filter_messaging_profile_id: nil,
        # Filter by exact phone number.
        filter_phone_number: nil,
        # Filter by phone number substring.
        filter_phone_number_contains: nil,
        page_number: nil,
        page_size: nil,
        # Sort by phone number.
        sort_phone_number: nil,
        request_options: {}
      )
      end

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
