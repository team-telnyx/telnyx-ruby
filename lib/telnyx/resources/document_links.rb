# frozen_string_literal: true

module Telnyx
  module Resources
    class DocumentLinks
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DocumentLinkListParams} for more details.
      #
      # List all documents links ordered by created_at descending.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DocumentLinkListParams::Filter] Consolidated filter parameter for document links (deepObject style). Originally:
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::DocumentLinkListResponse>]
      #
      # @see Telnyx::Models::DocumentLinkListParams
      def list(params = {})
        parsed, options = Telnyx::DocumentLinkListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "document_links",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::DocumentLinkListResponse,
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
