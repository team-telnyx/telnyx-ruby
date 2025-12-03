# frozen_string_literal: true

module Telnyx
  module Resources
    class Invoices
      # Retrieve a single invoice by its unique identifier.
      #
      # @overload retrieve(id, action: nil, request_options: {})
      #
      # @param id [String] Invoice UUID
      #
      # @param action [Symbol, Telnyx::Models::InvoiceRetrieveParams::Action] Invoice action
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InvoiceRetrieveResponse]
      #
      # @see Telnyx::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::InvoiceRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["invoices/%1$s", id],
          query: parsed,
          model: Telnyx::Models::InvoiceRetrieveResponse,
          options: options
        )
      end

      # Retrieve a paginated list of invoices.
      #
      # @overload list(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Symbol, Telnyx::Models::InvoiceListParams::Sort] Specifies the sort order for results.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::InvoiceListResponse>]
      #
      # @see Telnyx::Models::InvoiceListParams
      def list(params = {})
        parsed, options = Telnyx::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::InvoiceListResponse,
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
