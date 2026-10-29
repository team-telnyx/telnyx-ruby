# frozen_string_literal: true

require_relative "access_token"

module Telnyx
  module Lib
    # Local WebRTC login tokens for `client.telephony_credentials`. Mixed into
    # the generated {Telnyx::Resources::TelephonyCredentials} from `lib/telnyx/lib.rb`,
    # so it survives codegen.
    module TelephonyCredentials
      # A WebRTC login token for a credential, minted locally with no request
      # to Telnyx per token. Same use as `create_token`: hand it to the WebRTC
      # SDK as `login_token`.
      #
      # The signing material (`kid`, `tel_token`, `signing_secret`) is read from
      # the credential's `token_material`, present on the `create` response. A
      # credential given by id, or one from `retrieve` or `list`, fetches it
      # with {#fetch_token_material}. Pass `token_material:` to mint from values
      # stored earlier, with no request at all.
      #
      # @param credential [String, Telnyx::Models::TelephonyCredential, Telnyx::Models::TelephonyCredentialCreateResponse, Telnyx::Models::TelephonyCredentialRetrieveResponse]
      #   the credential id, the credential, or the `create` / `retrieve` response holding it
      #
      # @param ttl [Integer] token lifetime in seconds, 1..86400; default one hour
      #
      # @param token_material [Hash{Symbol=>String}, nil] `kid`, `tel_token`, `signing_secret` stored earlier
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      def to_jwt(
        credential,
        ttl: Telnyx::Lib::AccessToken::DEFAULT_TTL,
        token_material: nil,
        request_options: {}
      )
        model = credential_model(credential, request_options: request_options)
        material = token_material || model[:token_material] ||
                   fetch_token_material(model.id, request_options: request_options)

        Telnyx::Lib::AccessToken.new(
          credential_id: model.id,
          user_id: model.user_id,
          identity: model.sip_username,
          expires_at: model.expires_at,
          token_material: material,
          ttl: ttl
        ).to_jwt
      end

      # `GET /v2/telephony_credentials/:id/token_material`. Treat the result
      # like the SIP password: keep it on the server.
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}] `kid`, `tel_token`, `signing_secret`
      def fetch_token_material(id, request_options: {})
        body = @client.request(
          method: :get,
          path: ["telephony_credentials/%1$s/token_material", id],
          model: Telnyx::Internal::Type::Unknown,
          options: request_options
        )
        body.is_a?(Hash) && body.key?(:data) ? body.fetch(:data) : body
      end

      private

      # @return [Telnyx::Models::TelephonyCredential]
      def credential_model(credential, request_options:)
        model = credential.respond_to?(:data) ? credential.data : credential
        model = retrieve(model, request_options: request_options).data if model.is_a?(String)
        return model if model.is_a?(Telnyx::Models::TelephonyCredential)

        raise ArgumentError.new("expected a telephony credential or its id, got #{credential.inspect}")
      end
    end
  end

  module Resources
    class TelephonyCredentials
      include Telnyx::Lib::TelephonyCredentials
    end
  end
end
