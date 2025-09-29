# frozen_string_literal: true

module Telnyx
  module Resources
    class Documents
      # Retrieve a document.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentRetrieveResponse]
      #
      # @see Telnyx::Models::DocumentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["documents/%1$s", id],
          model: Telnyx::Models::DocumentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a document.
      #
      # @overload update(id, customer_reference: nil, filename: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param customer_reference [String] Optional reference string for customer tracking.
      #
      # @param filename [String] The filename of the document.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentUpdateResponse]
      #
      # @see Telnyx::Models::DocumentUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::DocumentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["documents/%1$s", id],
          body: parsed,
          model: Telnyx::Models::DocumentUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DocumentListParams} for more details.
      #
      # List all documents ordered by created_at descending.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DocumentListParams::Filter] Consolidated filter parameter for documents (deepObject style). Originally: filt
      #
      # @param page [Telnyx::Models::DocumentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Array<Symbol, Telnyx::Models::DocumentListParams::Sort>] Consolidated sort parameter for documents (deepObject style). Originally: sort[]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentListResponse]
      #
      # @see Telnyx::Models::DocumentListParams
      def list(params = {})
        parsed, options = Telnyx::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "documents",
          query: parsed,
          model: Telnyx::Models::DocumentListResponse,
          options: options
        )
      end

      # Delete a document.<br /><br />A document can only be deleted if it's not linked
      # to a service. If it is linked to a service, it must be unlinked prior to
      # deleting.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentDeleteResponse]
      #
      # @see Telnyx::Models::DocumentDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["documents/%1$s", id],
          model: Telnyx::Models::DocumentDeleteResponse,
          options: params[:request_options]
        )
      end

      # Download a document.
      #
      # @overload download(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::DocumentDownloadParams
      def download(id, params = {})
        @client.request(
          method: :get,
          path: ["documents/%1$s/download", id],
          headers: {"accept" => "*"},
          model: StringIO,
          options: params[:request_options]
        )
      end

      # Generates a temporary pre-signed URL that can be used to download the document
      # directly from the storage backend without authentication.
      #
      # @overload generate_download_link(id, request_options: {})
      #
      # @param id [String] Uniquely identifies the document
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentGenerateDownloadLinkResponse]
      #
      # @see Telnyx::Models::DocumentGenerateDownloadLinkParams
      def generate_download_link(id, params = {})
        @client.request(
          method: :get,
          path: ["documents/%1$s/download_link", id],
          model: Telnyx::Models::DocumentGenerateDownloadLinkResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DocumentUploadParams} for more details.
      #
      # Upload a document.<br /><br />Uploaded files must be linked to a service within
      # 30 minutes or they will be automatically deleted.
      #
      # @overload upload(url:, file:, customer_reference: nil, filename: nil, request_options: {})
      #
      # @param url [String] If the file is already hosted publicly, you can provide a URL and have the docum
      #
      # @param file [String] The Base64 encoded contents of the file you are uploading.
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param filename [String] The filename of the document.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DocumentUploadResponse]
      #
      # @see Telnyx::Models::DocumentUploadParams
      def upload(params)
        parsed, options = Telnyx::DocumentUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: "documents",
          body: parsed,
          model: Telnyx::Models::DocumentUploadResponse,
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
