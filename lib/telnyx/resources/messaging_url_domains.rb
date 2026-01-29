# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingURLDomains
      # List messaging URL domains
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::MessagingURLDomainListResponse>]
      #
      # @see Telnyx::Models::MessagingURLDomainListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingURLDomainListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_url_domains",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::MessagingURLDomainListResponse,
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
