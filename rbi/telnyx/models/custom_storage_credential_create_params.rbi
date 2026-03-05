# typed: strong

module Telnyx
  module Models
    class CustomStorageCredentialCreateParams < Telnyx::Models::CustomStorageConfiguration
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CustomStorageCredentialCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :connection_id

      sig do
        params(
          connection_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(connection_id:, request_options: {})
      end

      sig do
        override.returns(
          { connection_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
