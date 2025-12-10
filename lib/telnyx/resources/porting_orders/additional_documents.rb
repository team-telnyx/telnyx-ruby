# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingOrders
      class AdditionalDocuments
        # Creates a list of additional documents for a porting order.
        #
        # @overload create(id, additional_documents: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param additional_documents [Array<Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument>]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse]
        #
        # @see Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams
        def create(id, params = {})
          parsed, options = Telnyx::PortingOrders::AdditionalDocumentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["porting_orders/%1$s/additional_documents", id],
            body: parsed,
            model: Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PortingOrders::AdditionalDocumentListParams} for more details.
        #
        # Returns a list of additional documents for a porting order.
        #
        # @overload list(id, filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param id [String] Porting Order id
        #
        # @param filter [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[document_ty
        #
        # @param page [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PortingOrders::AdditionalDocumentListResponse]
        #
        # @see Telnyx::Models::PortingOrders::AdditionalDocumentListParams
        def list(id, params = {})
          parsed, options = Telnyx::PortingOrders::AdditionalDocumentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["porting_orders/%1$s/additional_documents", id],
            query: parsed,
            model: Telnyx::Models::PortingOrders::AdditionalDocumentListResponse,
            options: options
          )
        end

        # Deletes an additional document for a porting order.
        #
        # @overload delete(additional_document_id, id:, request_options: {})
        #
        # @param additional_document_id [String] Additional document identification.
        #
        # @param id [String] Porting Order id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::PortingOrders::AdditionalDocumentDeleteParams
        def delete(additional_document_id, params)
          parsed, options = Telnyx::PortingOrders::AdditionalDocumentDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["porting_orders/%1$s/additional_documents/%2$s", id, additional_document_id],
            model: NilClass,
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
end
