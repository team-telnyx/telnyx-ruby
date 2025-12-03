# typed: strong

module Telnyx
  module Resources
    class MobilePushCredentials
      # Creates a new mobile push credential
      sig do
        params(
          alias_: String,
          certificate: String,
          private_key: String,
          type: Telnyx::MobilePushCredentialCreateParams::Type::OrSymbol,
          project_account_json_file: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PushCredentialResponse)
      end
      def create(
        # Alias to uniquely identify the credential
        alias_:,
        # Certificate as received from APNs
        certificate:,
        # Corresponding private key to the certificate as received from APNs
        private_key:,
        # Type of mobile push credential. Should be <code>android</code> here
        type:,
        # Private key file in JSON format
        project_account_json_file:,
        request_options: {}
      )
      end

      # Retrieves mobile push credential based on the given `push_credential_id`
      sig do
        params(
          push_credential_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PushCredentialResponse)
      end
      def retrieve(
        # The unique identifier of a mobile push credential
        push_credential_id,
        request_options: {}
      )
      end

      # List mobile push credentials
      sig do
        params(
          filter: Telnyx::MobilePushCredentialListParams::Filter::OrHash,
          page: Telnyx::MobilePushCredentialListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MobilePushCredentialListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[alias]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Deletes a mobile push credential based on the given `push_credential_id`
      sig do
        params(
          push_credential_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The unique identifier of a mobile push credential
        push_credential_id,
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
