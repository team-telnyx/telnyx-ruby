# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#delete
    class WireguardPeerDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerDeleteResponse::Data]

      # @see Telnyx::Models::WireguardPeerDeleteResponse#data
      class Data < Telnyx::Models::WireguardPeerPatch
        # @!method initialize
      end
    end
  end
end
