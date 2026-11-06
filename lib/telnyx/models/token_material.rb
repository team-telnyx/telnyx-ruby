# frozen_string_literal: true

module Telnyx
  module Models
    class TokenMaterial < Telnyx::Internal::Type::BaseModel
      # @!attribute kid
      #   Identifies the Telnyx signing key the `signing_secret` was derived with. Goes in
      #   the token header.
      #
      #   @return [String, nil]
      optional :kid, String

      # @!attribute signing_secret
      #   The HMAC-SHA256 key the token is signed with, base64url without padding.
      #
      #   @return [String, nil]
      optional :signing_secret, String

      # @!attribute tel_token
      #   Opaque value Telnyx uses to resolve the credential. Carried in the token's
      #   `tel_token` claim as is.
      #
      #   @return [String, nil]
      optional :tel_token, String

      # @!method initialize(kid: nil, signing_secret: nil, tel_token: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TokenMaterial} for more details.
      #
      #   What a server needs to mint login tokens for the credential itself, with no
      #   request per token (`TelephonyCredential#to_jwt` in telnyx-ruby 3.1.0 or later).
      #   As sensitive as `sip_password`: keep it on the server.
      #
      #   @param kid [String] Identifies the Telnyx signing key the `signing_secret` was derived with. Goes in
      #
      #   @param signing_secret [String] The HMAC-SHA256 key the token is signed with, base64url without padding.
      #
      #   @param tel_token [String] Opaque value Telnyx uses to resolve the credential. Carried in the token's
      #   `tel\_
    end
  end
end
