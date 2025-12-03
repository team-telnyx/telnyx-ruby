# frozen_string_literal: true

module Telnyx
  module Resources
    class MobilePhoneNumbers
      # Retrieve a Mobile Phone Number
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the mobile phone number
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobilePhoneNumberRetrieveResponse]
      #
      # @see Telnyx::Models::MobilePhoneNumberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v2/mobile_phone_numbers/%1$s", id],
          model: Telnyx::Models::MobilePhoneNumberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Mobile Phone Number
      #
      # @overload update(id, call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, connection_id: nil, customer_reference: nil, inbound: nil, inbound_call_screening: nil, noise_suppression: nil, outbound: nil, tags: nil, request_options: {})
      #
      # @param id [String] The ID of the mobile phone number
      #
      # @param call_forwarding [Telnyx::Models::MobilePhoneNumberUpdateParams::CallForwarding]
      #
      # @param call_recording [Telnyx::Models::MobilePhoneNumberUpdateParams::CallRecording]
      #
      # @param caller_id_name_enabled [Boolean]
      #
      # @param cnam_listing [Telnyx::Models::MobilePhoneNumberUpdateParams::CnamListing]
      #
      # @param connection_id [String, nil]
      #
      # @param customer_reference [String, nil]
      #
      # @param inbound [Telnyx::Models::MobilePhoneNumberUpdateParams::Inbound]
      #
      # @param inbound_call_screening [Symbol, Telnyx::Models::MobilePhoneNumberUpdateParams::InboundCallScreening]
      #
      # @param noise_suppression [Boolean]
      #
      # @param outbound [Telnyx::Models::MobilePhoneNumberUpdateParams::Outbound]
      #
      # @param tags [Array<String>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobilePhoneNumberUpdateResponse]
      #
      # @see Telnyx::Models::MobilePhoneNumberUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::MobilePhoneNumberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v2/mobile_phone_numbers/%1$s", id],
          body: parsed,
          model: Telnyx::Models::MobilePhoneNumberUpdateResponse,
          options: options
        )
      end

      # List Mobile Phone Numbers
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] The page number to load
      #
      # @param page_size [Integer] The size of the page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::MobilePhoneNumber>]
      #
      # @see Telnyx::Models::MobilePhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::MobilePhoneNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v2/mobile_phone_numbers",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::MobilePhoneNumber,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
