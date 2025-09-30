# typed: strong

module Telnyx
  module Models
    class AccessIPAddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AccessIPAddressCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ip_address

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          ip_address: String,
          description: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(ip_address:, description: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            ip_address: String,
            description: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
