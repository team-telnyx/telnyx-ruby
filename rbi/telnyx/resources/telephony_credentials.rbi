# typed: strong

module Telnyx
  module Resources
    class TelephonyCredentials
      # Create a credential.
      sig do
        params(
          connection_id: String,
          expires_at: String,
          name: String,
          tag: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TelephonyCredentialCreateResponse)
      end
      def create(
        # Identifies the Credential Connection this credential is associated with.
        connection_id:,
        # ISO-8601 formatted date indicating when the credential will expire.
        expires_at: nil,
        name: nil,
        # Tags a credential. A single tag can hold at maximum 1000 credentials.
        tag: nil,
        request_options: {}
      )
      end

      # Get the details of an existing On-demand Credential.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TelephonyCredentialRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update an existing credential.
      sig do
        params(
          id: String,
          connection_id: String,
          expires_at: String,
          name: String,
          tag: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TelephonyCredentialUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # Identifies the Credential Connection this credential is associated with.
        connection_id: nil,
        # ISO-8601 formatted date indicating when the credential will expire.
        expires_at: nil,
        name: nil,
        # Tags a credential. A single tag can hold at maximum 1000 credentials.
        tag: nil,
        request_options: {}
      )
      end

      # List all On-demand Credentials.
      sig do
        params(
          filter: Telnyx::TelephonyCredentialListParams::Filter::OrHash,
          page: Telnyx::TelephonyCredentialListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[Telnyx::TelephonyCredential]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[tag],
        # filter[name], filter[status], filter[resource_id], filter[sip_username]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete an existing credential.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TelephonyCredentialDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Create an Access Token (JWT) for the credential.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(String)
      end
      def create_token(
        # Identifies the resource.
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
