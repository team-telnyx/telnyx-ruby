# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectsCoverageListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # The available throughput in Megabits per Second (Mbps) for your Virtual Cross
      # Connect.
      sig { returns(T.nilable(T::Array[Float])) }
      attr_reader :available_bandwidth

      sig { params(available_bandwidth: T::Array[Float]).void }
      attr_writer :available_bandwidth

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol
          )
        )
      end
      attr_reader :cloud_provider

      sig do
        params(
          cloud_provider:
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::OrSymbol
        ).void
      end
      attr_writer :cloud_provider

      # The region where your Virtual Private Cloud hosts are located. Should be
      # identical to how the cloud provider names region, i.e. us-east-1 for AWS but
      # Frankfurt for Azure
      sig { returns(T.nilable(String)) }
      attr_reader :cloud_provider_region

      sig { params(cloud_provider_region: String).void }
      attr_writer :cloud_provider_region

      sig { returns(T.nilable(Telnyx::NetappsLocation)) }
      attr_reader :location

      sig { params(location: Telnyx::NetappsLocation::OrHash).void }
      attr_writer :location

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          available_bandwidth: T::Array[Float],
          cloud_provider:
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::OrSymbol,
          cloud_provider_region: String,
          location: Telnyx::NetappsLocation::OrHash,
          record_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The available throughput in Megabits per Second (Mbps) for your Virtual Cross
        # Connect.
        available_bandwidth: nil,
        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        cloud_provider: nil,
        # The region where your Virtual Private Cloud hosts are located. Should be
        # identical to how the cloud provider names region, i.e. us-east-1 for AWS but
        # Frankfurt for Azure
        cloud_provider_region: nil,
        location: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            available_bandwidth: T::Array[Float],
            cloud_provider:
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol,
            cloud_provider_region: String,
            location: Telnyx::NetappsLocation,
            record_type: String
          }
        )
      end
      def to_hash
      end

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      module CloudProvider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol
          )
        GCE =
          T.let(
            :gce,
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
