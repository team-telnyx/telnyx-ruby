# typed: strong

module Telnyx
  module Resources
    class Documents
      # Retrieve a document.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update a document.
      sig do
        params(
          id: String,
          customer_reference: String,
          filename: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # Optional reference string for customer tracking.
        customer_reference: nil,
        # The filename of the document.
        filename: nil,
        request_options: {}
      )
      end

      # List all documents ordered by created_at descending.
      sig do
        params(
          filter: Telnyx::DocumentListParams::Filter::OrHash,
          page: Telnyx::DocumentListParams::Page::OrHash,
          sort: T::Array[Telnyx::DocumentListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentListResponse)
      end
      def list(
        # Consolidated filter parameter for documents (deepObject style). Originally:
        # filter[filename][contains], filter[customer_reference][eq],
        # filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter for documents (deepObject style). Originally: sort[]
        sort: nil,
        request_options: {}
      )
      end

      # Delete a document.<br /><br />A document can only be deleted if it's not linked
      # to a service. If it is linked to a service, it must be unlinked prior to
      # deleting.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Download a document.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Generates a temporary pre-signed URL that can be used to download the document
      # directly from the storage backend without authentication.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentGenerateDownloadLinkResponse)
      end
      def generate_download_link(
        # Uniquely identifies the document
        id,
        request_options: {}
      )
      end

      # Upload a document.<br /><br />Uploaded files must be linked to a service within
      # 30 minutes or they will be automatically deleted.
      sig do
        params(
          url: String,
          file: String,
          customer_reference: String,
          filename: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DocumentUploadResponse)
      end
      def upload(
        # If the file is already hosted publicly, you can provide a URL and have the
        # documents service fetch it for you.
        url:,
        # The Base64 encoded contents of the file you are uploading.
        file:,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # The filename of the document.
        filename: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
