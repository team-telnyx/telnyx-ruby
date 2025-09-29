# typed: strong

module Telnyx
  module Models
    class IP < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::IP, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ID of the IP Connection to which this IP should be attached.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # IP adddress represented by this resource.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { params(ip_address: String).void }
      attr_writer :ip_address

      # Port to use when connecting to this IP.
      sig { returns(T.nilable(Integer)) }
      attr_reader :port

      sig { params(port: Integer).void }
      attr_writer :port

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          connection_id: String,
          created_at: String,
          ip_address: String,
          port: Integer,
          record_type: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # ID of the IP Connection to which this IP should be attached.
        connection_id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # IP adddress represented by this resource.
        ip_address: nil,
        # Port to use when connecting to this IP.
        port: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            connection_id: String,
            created_at: String,
            ip_address: String,
            port: Integer,
            record_type: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
