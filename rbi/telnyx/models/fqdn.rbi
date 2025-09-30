# typed: strong

module Telnyx
  module Models
    class Fqdn < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::Fqdn, Telnyx::Internal::AnyHash) }

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ID of the FQDN connection to which this FQDN is attached.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # The DNS record type for the FQDN. For cases where a port is not set, the DNS
      # record type must be 'srv'. For cases where a port is set, the DNS record type
      # must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
      # will be used.
      sig { returns(T.nilable(String)) }
      attr_reader :dns_record_type

      sig { params(dns_record_type: String).void }
      attr_writer :dns_record_type

      # FQDN represented by this resource.
      sig { returns(T.nilable(String)) }
      attr_reader :fqdn

      sig { params(fqdn: String).void }
      attr_writer :fqdn

      # Port to use when connecting to this FQDN.
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
          dns_record_type: String,
          fqdn: String,
          port: Integer,
          record_type: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ID of the FQDN connection to which this FQDN is attached.
        connection_id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # The DNS record type for the FQDN. For cases where a port is not set, the DNS
        # record type must be 'srv'. For cases where a port is set, the DNS record type
        # must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
        # will be used.
        dns_record_type: nil,
        # FQDN represented by this resource.
        fqdn: nil,
        # Port to use when connecting to this FQDN.
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
            dns_record_type: String,
            fqdn: String,
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
