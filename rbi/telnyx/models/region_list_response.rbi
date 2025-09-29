# typed: strong

module Telnyx
  module Models
    class RegionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::RegionListResponse, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(T::Array[Telnyx::Models::RegionListResponse::Data]))
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::RegionListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: T::Array[Telnyx::Models::RegionListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::Models::RegionListResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::RegionListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A code for the region.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # A name for the region.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # List of interface types supported in this region.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :supported_interfaces

        sig { params(supported_interfaces: T::Array[String]).void }
        attr_writer :supported_interfaces

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

        sig do
          params(
            code: String,
            created_at: String,
            name: String,
            record_type: String,
            supported_interfaces: T::Array[String],
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A code for the region.
          code: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # A name for the region.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # List of interface types supported in this region.
          supported_interfaces: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              code: String,
              created_at: String,
              name: String,
              record_type: String,
              supported_interfaces: T::Array[String],
              updated_at: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
