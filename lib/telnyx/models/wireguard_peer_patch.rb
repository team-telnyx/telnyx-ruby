# frozen_string_literal: true

module Telnyx
  module Models
    class WireguardPeerPatch < Telnyx::Internal::Type::BaseModel
      # @!attribute public_key
      #   The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      #   Public and Private key pair will be generated for you.
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!method initialize(public_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WireguardPeerPatch} for more details.
      #
      #   @param public_key [String] The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
    end
  end
end
