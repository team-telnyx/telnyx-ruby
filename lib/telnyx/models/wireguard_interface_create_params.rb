# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#create
    class WireguardInterfaceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute region_code
      #   The region the interface should be deployed to.
      #
      #   @return [String]
      required :region_code, String

      # @!attribute enable_sip_trunking
      #   Enable SIP traffic forwarding over VPN interface.
      #
      #   @return [Boolean, nil]
      optional :enable_sip_trunking, Telnyx::Internal::Type::Boolean

      # @!attribute name
      #   A user specified name for the interface.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the network associated with the interface.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!method initialize(region_code:, enable_sip_trunking: nil, name: nil, network_id: nil, request_options: {})
      #   @param region_code [String] The region the interface should be deployed to.
      #
      #   @param enable_sip_trunking [Boolean] Enable SIP traffic forwarding over VPN interface.
      #
      #   @param name [String] A user specified name for the interface.
      #
      #   @param network_id [String] The id of the network associated with the interface.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
