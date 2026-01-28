# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingOptouts
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingOptoutListParams} for more details.
      #
      # Retrieve a list of opt-out blocks.
      #
      # @overload list(created_at: nil, filter: nil, page_number: nil, page_size: nil, redaction_enabled: nil, request_options: {})
      #
      # @param created_at [Telnyx::Models::MessagingOptoutListParams::CreatedAt] Consolidated created_at parameter (deepObject style). Originally: created_at[gte
      #
      # @param filter [Telnyx::Models::MessagingOptoutListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[messaging_p
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param redaction_enabled [String] If receiving address (+E.164 formatted phone number) should be redacted
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::MessagingOptoutListResponse>]
      #
      # @see Telnyx::Models::MessagingOptoutListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingOptoutListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_optouts",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::MessagingOptoutListResponse,
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
