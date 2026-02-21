# frozen_string_literal: true

module Telnyx
  module Resources
    class AlphanumericSenderIDs
      # Create a new alphanumeric sender ID associated with a messaging profile.
      #
      # @overload create(alphanumeric_sender_id:, messaging_profile_id:, us_long_code_fallback: nil, request_options: {})
      #
      # @param alphanumeric_sender_id [String] The alphanumeric sender ID string.
      #
      # @param messaging_profile_id [String] The messaging profile to associate the sender ID with.
      #
      # @param us_long_code_fallback [String] A US long code number to use as fallback when sending to US destinations.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AlphanumericSenderIDCreateResponse]
      #
      # @see Telnyx::Models::AlphanumericSenderIDCreateParams
      def create(params)
        parsed, options = Telnyx::AlphanumericSenderIDCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "alphanumeric_sender_ids",
          body: parsed,
          model: Telnyx::Models::AlphanumericSenderIDCreateResponse,
          options: options
        )
      end

      # Retrieve a specific alphanumeric sender ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The identifier of the alphanumeric sender ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AlphanumericSenderIDRetrieveResponse]
      #
      # @see Telnyx::Models::AlphanumericSenderIDRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["alphanumeric_sender_ids/%1$s", id],
          model: Telnyx::Models::AlphanumericSenderIDRetrieveResponse,
          options: params[:request_options]
        )
      end

      # List all alphanumeric sender IDs for the authenticated user.
      #
      # @overload list(filter_messaging_profile_id: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_messaging_profile_id [String] Filter by messaging profile ID.
      #
      # @param page_number [Integer] Page number.
      #
      # @param page_size [Integer] Page size.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AlphanumericSenderIDListResponse>]
      #
      # @see Telnyx::Models::AlphanumericSenderIDListParams
      def list(params = {})
        parsed, options = Telnyx::AlphanumericSenderIDListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "alphanumeric_sender_ids",
          query: parsed.transform_keys(
            filter_messaging_profile_id: "filter[messaging_profile_id]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::AlphanumericSenderIDListResponse,
          options: options
        )
      end

      # Delete an alphanumeric sender ID and disassociate it from its messaging profile.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The identifier of the alphanumeric sender ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AlphanumericSenderIDDeleteResponse]
      #
      # @see Telnyx::Models::AlphanumericSenderIDDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["alphanumeric_sender_ids/%1$s", id],
          model: Telnyx::Models::AlphanumericSenderIDDeleteResponse,
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
