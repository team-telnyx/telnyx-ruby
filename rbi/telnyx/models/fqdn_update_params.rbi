# typed: strong

module Telnyx
  module Models
    class FqdnUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FqdnUpdateParams, Telnyx::Internal::AnyHash)
        end

      # ID of the FQDN connection to which this IP should be attached.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

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
      attr_accessor :port

      sig do
        params(
          connection_id: String,
          dns_record_type: String,
          fqdn: String,
          port: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the FQDN connection to which this IP should be attached.
        connection_id: nil,
        # The DNS record type for the FQDN. For cases where a port is not set, the DNS
        # record type must be 'srv'. For cases where a port is set, the DNS record type
        # must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
        # will be used.
        dns_record_type: nil,
        # FQDN represented by this resource.
        fqdn: nil,
        # Port to use when connecting to this FQDN.
        port: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            dns_record_type: String,
            fqdn: String,
            port: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
