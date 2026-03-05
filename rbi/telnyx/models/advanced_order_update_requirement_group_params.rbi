# typed: strong

module Telnyx
  module Models
    class AdvancedOrderUpdateRequirementGroupParams < Telnyx::Models::AdvancedOrder
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AdvancedOrderUpdateRequirementGroupParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :advanced_order_id

      sig do
        params(
          advanced_order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(advanced_order_id:, request_options: {})
      end

      sig do
        override.returns(
          { advanced_order_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
