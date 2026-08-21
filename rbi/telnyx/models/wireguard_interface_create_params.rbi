# typed: strong

module Telnyx
  module Models
    class WireguardInterfaceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WireguardInterfaceCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::WireguardInterfaceCreateParams::Body) }
      attr_reader :body

      sig do
        params(body: Telnyx::WireguardInterfaceCreateParams::Body::OrHash).void
      end
      attr_writer :body

      sig do
        params(
          body: Telnyx::WireguardInterfaceCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: Telnyx::WireguardInterfaceCreateParams::Body,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Telnyx::Models::WireguardInterface
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WireguardInterfaceCreateParams::Body,
              Telnyx::Internal::AnyHash
            )
          end

        # The region the interface should be deployed to.
        sig { returns(String) }
        attr_accessor :region_code

        sig { params(region_code: String).returns(T.attached_class) }
        def self.new(
          # The region the interface should be deployed to.
          region_code:
        )
        end

        sig { override.returns({ region_code: String }) }
        def to_hash
        end
      end
    end
  end
end
