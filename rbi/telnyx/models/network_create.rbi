# typed: strong

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::NetworkCreate, Telnyx::Internal::AnyHash) }

      # A user specified name for the network.
      sig { returns(String) }
      attr_accessor :name

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

      sig do
        params(
          name: String,
          id: String,
          created_at: String,
          record_type: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A user specified name for the network.
        name:,
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
