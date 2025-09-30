# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#retrieve
    class WireguardPeerRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WireguardPeerRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WireguardPeerRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WireguardPeerRetrieveResponse::Data]
    end
  end
end
