# typed: strong

module Telnyx
  module Resources
    class OAuthGrants
      # Retrieve a single OAuth grant by ID
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthGrantRetrieveResponse)
      end
      def retrieve(
        # OAuth grant ID
        id,
        request_options: {}
      )
      end

      # Retrieve a paginated list of OAuth grants for the authenticated user
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthGrantListResponse)
      end
      def list(
        # Page number
        page_number: nil,
        # Number of results per page
        page_size: nil,
        request_options: {}
      )
      end

      # Revoke an OAuth grant
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OAuthGrantDeleteResponse)
      end
      def delete(
        # OAuth grant ID
        id,
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
