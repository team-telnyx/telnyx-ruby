# typed: strong

module Telnyx
  module Resources
    class MobilePushCredentials
      # Creates a new mobile push credential
      sig do
        params(
          create_mobile_push_credential_request:
            T.any(
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios::OrHash,
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::PushCredentialResponse)
      end
      def create(create_mobile_push_credential_request:, request_options: {})
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
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::PushCredential]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[type],
        # filter[alias]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
