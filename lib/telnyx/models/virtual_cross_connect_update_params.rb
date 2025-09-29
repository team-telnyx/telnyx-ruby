# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#update
    class VirtualCrossConnectUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute primary_cloud_ip
      #   The IP address assigned for your side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value can not be patched once the VXC has bene provisioned.
      #
      #   @return [String, nil]
      optional :primary_cloud_ip, String

      # @!attribute primary_enabled
      #   Indicates whether the primary circuit is enabled. Setting this to `false` will
      #   disable the circuit.
      #
      #   @return [Boolean, nil]
      optional :primary_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute primary_routing_announcement
      #   Whether the primary BGP route is being announced.
      #
      #   @return [Boolean, nil]
      optional :primary_routing_announcement, Telnyx::Internal::Type::Boolean

      # @!attribute secondary_cloud_ip
      #   The IP address assigned for your side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value can not be patched once the VXC has bene provisioned.
      #
      #   @return [String, nil]
      optional :secondary_cloud_ip, String

      # @!attribute secondary_enabled
      #   Indicates whether the secondary circuit is enabled. Setting this to `false` will
      #   disable the circuit.
      #
      #   @return [Boolean, nil]
      optional :secondary_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute secondary_routing_announcement
      #   Whether the secondary BGP route is being announced.
      #
      #   @return [Boolean, nil]
      optional :secondary_routing_announcement, Telnyx::Internal::Type::Boolean

      # @!method initialize(primary_cloud_ip: nil, primary_enabled: nil, primary_routing_announcement: nil, secondary_cloud_ip: nil, secondary_enabled: nil, secondary_routing_announcement: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VirtualCrossConnectUpdateParams} for more details.
      #
      #   @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      #   @param primary_enabled [Boolean] Indicates whether the primary circuit is enabled. Setting this to `false` will d
      #
      #   @param primary_routing_announcement [Boolean] Whether the primary BGP route is being announced.
      #
      #   @param secondary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      #   @param secondary_enabled [Boolean] Indicates whether the secondary circuit is enabled. Setting this to `false` will
      #
      #   @param secondary_routing_announcement [Boolean] Whether the secondary BGP route is being announced.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
