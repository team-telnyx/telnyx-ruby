# frozen_string_literal: true

module Telnyx
  module Resources
    class Portouts
      class SupportingDocuments
        # Creates a list of supporting documents on a portout request.
        #
        # @overload create(id, documents: nil, request_options: {})
        #
        # @param id [String] Portout id
        #
        # @param documents [Array<Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document>] List of supporting documents parameters
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::SupportingDocumentCreateResponse]
        #
        # @see Telnyx::Models::Portouts::SupportingDocumentCreateParams
        def create(id, params = {})
          parsed, options = Telnyx::Portouts::SupportingDocumentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["portouts/%1$s/supporting_documents", id],
            body: parsed,
            model: Telnyx::Models::Portouts::SupportingDocumentCreateResponse,
            options: options
          )
        end

        # List every supporting documents for a portout request.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] Portout id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::SupportingDocumentListResponse]
        #
        # @see Telnyx::Models::Portouts::SupportingDocumentListParams
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["portouts/%1$s/supporting_documents", id],
            model: Telnyx::Models::Portouts::SupportingDocumentListResponse,
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
end
