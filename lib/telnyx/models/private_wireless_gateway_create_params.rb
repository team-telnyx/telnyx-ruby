# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#create
    class PrivateWirelessGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   The private wireless gateway name.
      #
      #   @return [String]
      required :name, String

      # @!attribute network_id
      #   The identification of the related network resource.
      #
      #   @return [String]
      required :network_id, String

      # @!attribute region_code
      #   The code of the region where the private wireless gateway will be assigned. A
      #   list of available regions can be found at the regions endpoint
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!method initialize(name:, network_id:, region_code: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PrivateWirelessGatewayCreateParams} for more details.
      #
      #   @param name [String] The private wireless gateway name.
      #
      #   @param network_id [String] The identification of the related network resource.
      #
      #   @param region_code [String] The code of the region where the private wireless gateway will be assigned. A li
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
