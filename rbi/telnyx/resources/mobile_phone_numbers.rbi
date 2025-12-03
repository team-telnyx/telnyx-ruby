# typed: strong

module Telnyx
  module Resources
    class MobilePhoneNumbers
      # Retrieve a Mobile Phone Number
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobilePhoneNumberRetrieveResponse)
      end
      def retrieve(
        # The ID of the mobile phone number
        id,
        request_options: {}
      )
      end

      # Update a Mobile Phone Number
      sig do
        params(
          id: String,
          call_forwarding:
            Telnyx::MobilePhoneNumberUpdateParams::CallForwarding::OrHash,
          call_recording:
            Telnyx::MobilePhoneNumberUpdateParams::CallRecording::OrHash,
          caller_id_name_enabled: T::Boolean,
          cnam_listing:
            Telnyx::MobilePhoneNumberUpdateParams::CnamListing::OrHash,
          connection_id: T.nilable(String),
          customer_reference: T.nilable(String),
          inbound: Telnyx::MobilePhoneNumberUpdateParams::Inbound::OrHash,
          inbound_call_screening:
            Telnyx::MobilePhoneNumberUpdateParams::InboundCallScreening::OrSymbol,
          noise_suppression: T::Boolean,
          outbound: Telnyx::MobilePhoneNumberUpdateParams::Outbound::OrHash,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobilePhoneNumberUpdateResponse)
      end
      def update(
        # The ID of the mobile phone number
        id,
        call_forwarding: nil,
        call_recording: nil,
        caller_id_name_enabled: nil,
        cnam_listing: nil,
        connection_id: nil,
        customer_reference: nil,
        inbound: nil,
        inbound_call_screening: nil,
        noise_suppression: nil,
        outbound: nil,
        tags: nil,
        request_options: {}
      )
      end

      # List Mobile Phone Numbers
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::MobilePhoneNumber]
        )
      end
      def list(
        # The page number to load
        page_number: nil,
        # The size of the page
        page_size: nil,
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
