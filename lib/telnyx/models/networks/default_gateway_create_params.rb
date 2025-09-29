# frozen_string_literal: true

module Telnyx
  module Models
    module Networks
      # @see Telnyx::Resources::Networks::DefaultGateway#create
      class DefaultGatewayCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute wireguard_peer_id
        #   Wireguard peer ID.
        #
        #   @return [String, nil]
        optional :wireguard_peer_id, String

        # @!method initialize(wireguard_peer_id: nil, request_options: {})
        #   @param wireguard_peer_id [String] Wireguard peer ID.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
