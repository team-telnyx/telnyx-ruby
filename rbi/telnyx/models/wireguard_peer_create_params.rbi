# typed: strong

module Telnyx
  module Models
    class WireguardPeerCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardPeerCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::WireguardPeerCreateParams::Body) }
      attr_reader :body

      sig { params(body: Telnyx::WireguardPeerCreateParams::Body::OrHash).void }
      attr_writer :body

      sig do
        params(
          body: Telnyx::WireguardPeerCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: Telnyx::WireguardPeerCreateParams::Body,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Telnyx::Models::WireguardPeer
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WireguardPeerCreateParams::Body,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
