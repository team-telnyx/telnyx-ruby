# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VirtualCrossConnectUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The IP address assigned for your side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_cloud_ip

      sig { params(primary_cloud_ip: String).void }
      attr_writer :primary_cloud_ip

      # Indicates whether the primary circuit is enabled. Setting this to `false` will
      # disable the circuit.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :primary_enabled

      sig { params(primary_enabled: T::Boolean).void }
      attr_writer :primary_enabled

      # Whether the primary BGP route is being announced.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :primary_routing_announcement

      sig { params(primary_routing_announcement: T::Boolean).void }
      attr_writer :primary_routing_announcement

      # The IP address assigned for your side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
      sig { returns(T.nilable(String)) }
      attr_reader :secondary_cloud_ip

      sig { params(secondary_cloud_ip: String).void }
      attr_writer :secondary_cloud_ip

      # Indicates whether the secondary circuit is enabled. Setting this to `false` will
      # disable the circuit.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :secondary_enabled

      sig { params(secondary_enabled: T::Boolean).void }
      attr_writer :secondary_enabled

      # Whether the secondary BGP route is being announced.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :secondary_routing_announcement

      sig { params(secondary_routing_announcement: T::Boolean).void }
      attr_writer :secondary_routing_announcement

      sig do
        params(
          primary_cloud_ip: String,
          primary_enabled: T::Boolean,
          primary_routing_announcement: T::Boolean,
          secondary_cloud_ip: String,
          secondary_enabled: T::Boolean,
          secondary_routing_announcement: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        primary_cloud_ip: nil,
        # Indicates whether the primary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        primary_enabled: nil,
        # Whether the primary BGP route is being announced.
        primary_routing_announcement: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        secondary_cloud_ip: nil,
        # Indicates whether the secondary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        secondary_enabled: nil,
        # Whether the secondary BGP route is being announced.
        secondary_routing_announcement: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            primary_cloud_ip: String,
            primary_enabled: T::Boolean,
            primary_routing_announcement: T::Boolean,
            secondary_cloud_ip: String,
            secondary_enabled: T::Boolean,
            secondary_routing_announcement: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
