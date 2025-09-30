# typed: strong

module Telnyx
  module Models
    class SimCardOrderPreviewPreviewParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SimCardOrderPreviewPreviewParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Uniquely identifies the address for the order.
      sig { returns(String) }
      attr_accessor :address_id

      # The amount of SIM cards that the user would like to purchase in the SIM card
      # order.
      sig { returns(Integer) }
      attr_accessor :quantity

      sig do
        params(
          address_id: String,
          quantity: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the address for the order.
        address_id:,
        # The amount of SIM cards that the user would like to purchase in the SIM card
        # order.
        quantity:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            address_id: String,
            quantity: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
