# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardPeers#create
    class WireguardPeerCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Telnyx::Models::WireguardPeerCreateParams::Body]
      required :body, -> { Telnyx::WireguardPeerCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::WireguardPeerCreateParams::Body]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Body < Telnyx::Models::WireguardPeer
        # @!method initialize
      end
    end
  end
end
