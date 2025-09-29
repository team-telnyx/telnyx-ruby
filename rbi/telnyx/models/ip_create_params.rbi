# typed: strong

module Telnyx
  module Models
    class IPCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::IPCreateParams, Telnyx::Internal::AnyHash)
        end

      # IP adddress represented by this resource.
      sig { returns(String) }
      attr_accessor :ip_address

      # ID of the IP Connection to which this IP should be attached.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # Port to use when connecting to this IP.
      sig { returns(T.nilable(Integer)) }
      attr_reader :port

      sig { params(port: Integer).void }
      attr_writer :port

      sig do
        params(
          ip_address: String,
          connection_id: String,
          port: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # IP adddress represented by this resource.
        ip_address:,
        # ID of the IP Connection to which this IP should be attached.
        connection_id: nil,
        # Port to use when connecting to this IP.
        port: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ip_address: String,
            connection_id: String,
            port: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
