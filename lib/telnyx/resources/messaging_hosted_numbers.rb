# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingHostedNumbers
      # Retrieve a specific messaging hosted number by its ID or phone number.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID or phone number of the hosted number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberRetrieveResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messaging_hosted_numbers/%1$s", id],
          model: Telnyx::Models::MessagingHostedNumberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingHostedNumberUpdateParams} for more details.
      #
      # Update the messaging settings for a hosted number.
      #
      # @overload update(id, messaging_product: nil, messaging_profile_id: nil, tags: nil, request_options: {})
      #
      # @param id [String] The ID or phone number of the hosted number.
      #
      # @param messaging_product [String] Configure the messaging product for this number:
      #
      # @param messaging_profile_id [String] Configure the messaging profile this phone number is assigned to:
      #
      # @param tags [Array<String>] Tags to set on this phone number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberUpdateResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::MessagingHostedNumberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["messaging_hosted_numbers/%1$s", id],
          body: parsed,
          model: Telnyx::Models::MessagingHostedNumberUpdateResponse,
          options: options
        )
      end

      # List all hosted numbers associated with the authenticated user.
      #
      # @overload list(filter_messaging_profile_id: nil, filter_phone_number: nil, filter_phone_number_contains: nil, page_number: nil, page_size: nil, sort_phone_number: nil, request_options: {})
      #
      # @param filter_messaging_profile_id [String] Filter by messaging profile ID.
      #
      # @param filter_phone_number [String] Filter by exact phone number.
      #
      # @param filter_phone_number_contains [String] Filter by phone number substring.
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort_phone_number [Symbol, Telnyx::Models::MessagingHostedNumberListParams::SortPhoneNumber] Sort by phone number.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PhoneNumberWithMessagingSettings>]
      #
      # @see Telnyx::Models::MessagingHostedNumberListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingHostedNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_hosted_numbers",
          query: parsed.transform_keys(
            filter_messaging_profile_id: "filter[messaging_profile_id]",
            filter_phone_number: "filter[phone_number]",
            filter_phone_number_contains: "filter[phone_number][contains]",
            page_number: "page[number]",
            page_size: "page[size]",
            sort_phone_number: "sort[phone_number]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::PhoneNumberWithMessagingSettings,
          options: options
        )
      end

      # Delete a messaging hosted number
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingHostedNumberDeleteResponse]
      #
      # @see Telnyx::Models::MessagingHostedNumberDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["messaging_hosted_numbers/%1$s", id],
          model: Telnyx::Models::MessagingHostedNumberDeleteResponse,
          options: params[:request_options]
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
