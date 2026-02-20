# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      sig { returns(Telnyx::Resources::PhoneNumbers::Actions) }
      attr_reader :actions

      sig { returns(Telnyx::Resources::PhoneNumbers::CsvDownloads) }
      attr_reader :csv_downloads

      sig { returns(Telnyx::Resources::PhoneNumbers::Jobs) }
      attr_reader :jobs

      sig { returns(Telnyx::Resources::PhoneNumbers::Messaging) }
      attr_reader :messaging

      sig { returns(Telnyx::Resources::PhoneNumbers::Voice) }
      attr_reader :voice

      sig { returns(Telnyx::Resources::PhoneNumbers::Voicemail) }
      attr_reader :voicemail

      # Retrieve a phone number
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PhoneNumberRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update a phone number
      sig do
        params(
          phone_number_id: String,
          address_id: String,
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          external_pin: String,
          hd_voice_enabled: T::Boolean,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PhoneNumberUpdateResponse)
      end
      def update(
        # Identifies the resource.
        phone_number_id,
        # Identifies the address associated with the phone number.
        address_id: nil,
        # Identifies the billing group associated with the phone number.
        billing_group_id: nil,
        # Identifies the connection associated with the phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, we will attempt to verify that you provided the
        # correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        external_pin: nil,
        # Indicates whether HD voice is enabled for this number.
        hd_voice_enabled: nil,
        # A list of user-assigned tags to help organize phone numbers.
        tags: nil,
        request_options: {}
      )
      end

      # List phone numbers
      sig do
        params(
          filter: Telnyx::PhoneNumberListParams::Filter::OrHash,
          handle_messaging_profile_error:
            Telnyx::PhoneNumberListParams::HandleMessagingProfileError::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::PhoneNumberListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::PhoneNumberDetailed]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[phone_number], filter[status], filter[country_iso_alpha2],
        # filter[connection_id], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference], filter[number_type],
        # filter[source]
        filter: nil,
        # Although it is an infrequent occurrence, due to the highly distributed nature of
        # the Telnyx platform, it is possible that there will be an issue when loading in
        # Messaging Profile information. As such, when this parameter is set to `true` and
        # an error in fetching this information occurs, messaging profile related fields
        # will be omitted in the response and an error message will be included instead of
        # returning a 503 error.
        handle_messaging_profile_error: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Delete a phone number
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PhoneNumberDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # List phone numbers, This endpoint is a lighter version of the /phone_numbers
      # endpoint having higher performance and rate limit.
      sig do
        params(
          filter: Telnyx::PhoneNumberSlimListParams::Filter::OrHash,
          include_connection: T::Boolean,
          include_tags: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::PhoneNumberSlimListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::PhoneNumberSlimListResponse
          ]
        )
      end
      def slim_list(
        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[phone_number], filter[status], filter[country_iso_alpha2],
        # filter[connection_id], filter[voice.connection_name],
        # filter[voice.usage_payment_method], filter[billing_group_id],
        # filter[emergency_address_id], filter[customer_reference], filter[number_type],
        # filter[source]
        filter: nil,
        # Include the connection associated with the phone number.
        include_connection: nil,
        # Include the tags associated with the phone number.
        include_tags: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        sort: nil,
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
