# typed: strong

module Telnyx
  module Models
    class SiprecConnectorDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SiprecConnectorDeleteParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :connector_name

      sig do
        params(
          connector_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(connector_name:, request_options: {})
      end

      sig do
        override.returns(
          { connector_name: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
