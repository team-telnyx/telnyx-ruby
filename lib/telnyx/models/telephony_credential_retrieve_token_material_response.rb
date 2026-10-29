# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#retrieve_token_material
    class TelephonyCredentialRetrieveTokenMaterialResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   What a server needs to mint login tokens for the credential itself, with no
      #   request per token (`TelephonyCredential#to_jwt` in telnyx-ruby 3.1.0 or later).
      #   As sensitive as `sip_password`: keep it on the server.
      #
      #   @return [Telnyx::Models::TokenMaterial, nil]
      optional :data, -> { Telnyx::TokenMaterial }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TelephonyCredentialRetrieveTokenMaterialResponse} for more
      #   details.
      #
      #   @param data [Telnyx::Models::TokenMaterial] What a server needs to mint login tokens for the credential itself, with no requ
    end
  end
end
