# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#create
    class AgentGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute wireguard_interface_id
      #   One of the account's WireGuard Interfaces. The instance joins it as a peer, and
      #   the interface's other peers reach the instance.
      #
      #   @return [String]
      required :wireguard_interface_id, String

      # @!attribute name
      #   A label for people.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(wireguard_interface_id:, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AgentGatewayCreateParams} for more details.
      #
      #   @param wireguard_interface_id [String] One of the account's WireGuard Interfaces. The instance joins it as a peer, and
      #
      #   @param name [String, nil] A label for people.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
