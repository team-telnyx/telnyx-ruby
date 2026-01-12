# typed: strong

module Telnyx
  module Models
    class NetworkListInterfacesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkListInterfacesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A user specified name for the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The id of the network associated with the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      sig do
        returns(
          T.nilable(Telnyx::Models::NetworkListInterfacesResponse::Region)
        )
      end
      attr_reader :region

      sig do
        params(
          region: Telnyx::Models::NetworkListInterfacesResponse::Region::OrHash
        ).void
      end
      attr_writer :region

      # The region interface is deployed to.
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The current status of the interface deployment.
      sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
      attr_writer :status

      # Identifies the type of the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          id: String,
          created_at: String,
          record_type: String,
          updated_at: String,
          name: String,
          network_id: String,
          status: Telnyx::InterfaceStatus::OrSymbol,
          region: Telnyx::Models::NetworkListInterfacesResponse::Region::OrHash,
          region_code: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
        # A user specified name for the interface.
        name: nil,
        # The id of the network associated with the interface.
        network_id: nil,
        # The current status of the interface deployment.
        status: nil,
        region: nil,
        # The region interface is deployed to.
        region_code: nil,
        # Identifies the type of the interface.
        type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
            name: String,
            network_id: String,
            status: Telnyx::InterfaceStatus::TaggedSymbol,
            region: Telnyx::Models::NetworkListInterfacesResponse::Region,
            region_code: String,
            type: String
          }
        )
      end
      def to_hash
      end

      class Region < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NetworkListInterfacesResponse::Region,
              Telnyx::Internal::AnyHash
            )
          end

        # Region code of the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Region name of the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(code: String, name: String, record_type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Region code of the interface.
          code: nil,
          # Region name of the interface.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns({ code: String, name: String, record_type: String })
        end
        def to_hash
        end
      end
    end
  end
end
