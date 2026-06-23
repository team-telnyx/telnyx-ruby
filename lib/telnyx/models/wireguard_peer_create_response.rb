# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#create
    class WireguardPeerCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeer, nil]
      optional :data, -> { Telnyx::WireguardPeer }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeer]
    end
  end
end
