# typed: strong

module Telnyx
  module Resources
    class IntegrationSecrets
      # Create a new secret with an associated identifier that can be used to securely
      # integrate with other services.
      sig do
        params(
          identifier: String,
          type: Telnyx::IntegrationSecretCreateParams::Type::OrSymbol,
          token: String,
          password: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IntegrationSecretCreateResponse)
      end
      def create(
        # The unique identifier of the secret.
        identifier:,
        # The type of secret.
        type:,
        # The token for the secret. Required for bearer type secrets, ignored otherwise.
        token: nil,
        # The password for the secret. Required for basic type secrets, ignored otherwise.
        password: nil,
        # The username for the secret. Required for basic type secrets, ignored otherwise.
        username: nil,
        request_options: {}
      )
      end

      # Retrieve a list of all integration secrets configured by the user.
      sig do
        params(
          filter: Telnyx::IntegrationSecretListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::IntegrationSecret]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[type]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an integration secret given its ID.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(id, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
