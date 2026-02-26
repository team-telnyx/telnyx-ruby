# typed: strong

module Telnyx
  module Models
    class NetworkCoverageListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkCoverageListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # List of interface types supported in this region.
      sig do
        returns(T.nilable(T::Array[Telnyx::AvailableService::TaggedSymbol]))
      end
      attr_reader :available_services

      sig do
        params(
          available_services: T::Array[Telnyx::AvailableService::OrSymbol]
        ).void
      end
      attr_writer :available_services

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
          available_services: T::Array[Telnyx::AvailableService::OrSymbol],
          location: Telnyx::NetappsLocation::OrHash,
          record_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of interface types supported in this region.
        available_services: nil,
        location: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            available_services:
              T::Array[Telnyx::AvailableService::TaggedSymbol],
            location: Telnyx::NetappsLocation,
            record_type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
