# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingURLDomains
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingURLDomainListParams} for more details.
      #
      # List messaging URL domains
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::MessagingURLDomainListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::MessagingURLDomainListResponse>]
      #
      # @see Telnyx::Models::MessagingURLDomainListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingURLDomainListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_url_domains",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
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
