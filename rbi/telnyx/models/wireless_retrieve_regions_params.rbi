# typed: strong

module Telnyx
  module Models
    class WirelessRetrieveRegionsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WirelessRetrieveRegionsParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The product for which to list regions (e.g., 'public_ips',
      # 'private_wireless_gateways').
      sig { returns(String) }
      attr_accessor :product

      sig do
        params(
          product: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The product for which to list regions (e.g., 'public_ips',
        # 'private_wireless_gateways').
        product:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { product: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
