# typed: strong

module Telnyx
  module Resources
    class AdvancedOrders
      # Create Advanced Order
      sig do
        params(
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features:
            T::Array[Telnyx::AdvancedOrderCreateParams::Feature::OrSymbol],
          phone_number_type:
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def create(
        area_code: nil,
        comments: nil,
        country_code: nil,
        customer_reference: nil,
        features: nil,
        phone_number_type: nil,
        quantity: nil,
        # The ID of the requirement group to associate with this advanced order
        requirement_group_id: nil,
        request_options: {}
      )
      end

      # Get Advanced Order
      sig do
        params(
          order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def retrieve(order_id, request_options: {})
      end

      # List Advanced Orders
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          T.anything
        )
      end
      def list(request_options: {})
      end

      # Update Advanced Order
      sig do
        params(
          advanced_order_id: String,
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features:
            T::Array[
              Telnyx::AdvancedOrderUpdateRequirementGroupParams::Feature::OrSymbol
            ],
          phone_number_type:
            Telnyx::AdvancedOrderUpdateRequirementGroupParams::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.anything)
      end
      def update_requirement_group(
        advanced_order_id,
        area_code: nil,
        comments: nil,
        country_code: nil,
        customer_reference: nil,
        features: nil,
        phone_number_type: nil,
        quantity: nil,
        # The ID of the requirement group to associate with this advanced order
        requirement_group_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
