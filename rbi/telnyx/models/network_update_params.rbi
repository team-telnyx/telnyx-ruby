# typed: strong

module Telnyx
  module Models
    class NetworkUpdateParams < Telnyx::Models::NetworkCreate
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NetworkUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :network_id

      sig do
        params(
          network_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(network_id:, request_options: {})
      end

      sig do
        override.returns(
          { network_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
