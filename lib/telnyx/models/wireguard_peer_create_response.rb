# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#create
    class WireguardPeerCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerCreateResponse::Data]
    end
  end
end
