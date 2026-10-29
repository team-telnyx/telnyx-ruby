# typed: strong

module Telnyx
  module Lib
    module TelephonyCredentials
      sig do
        params(
          credential: T.any(
            String,
            Telnyx::Models::TelephonyCredential,
            Telnyx::Models::TelephonyCredentialCreateResponse,
            Telnyx::Models::TelephonyCredentialRetrieveResponse
          ),
          ttl: Integer,
          token_material: T.nilable(T::Hash[T.any(Symbol, String), T.untyped]),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(String)
      end
      def to_jwt(
        # the credential id, the credential, or the `create` / `retrieve` response holding it
        credential,
        # token lifetime in seconds, 1..86400; default one hour
        ttl: Telnyx::Lib::AccessToken::DEFAULT_TTL,
        # `kid`, `tel_token`, `signing_secret` stored earlier; skips the lookup
        token_material: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.untyped])
      end
      def fetch_token_material(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end
    end
  end

  module Resources
    class TelephonyCredentials
      include Telnyx::Lib::TelephonyCredentials
    end
  end
end
