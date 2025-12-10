# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#update
    class WireguardPeerUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerUpdateResponse::Data]

      # @see Telnyx::Models::WireguardPeerUpdateResponse#data
      class Data < Telnyx::Models::WireguardPeerPatch
        # @!method initialize
      end
    end
  end
end
