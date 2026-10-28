# typed: strong

module Telnyx
  module Models
    class TunnelCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TunnelCreateParams, Telnyx::Internal::AnyHash)
        end

      # A user specified name for the tunnel.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user specified name for the tunnel.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { name: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
