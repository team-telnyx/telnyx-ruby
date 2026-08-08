# typed: strong

module Telnyx
  module Resources
    class AdvancedOrders
      # Creates an advanced number order from the requested order configuration. The
      # response contains the resulting advanced order and its initial state.
      sig do
        params(
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features: T::Array[Telnyx::AdvancedOrderRequest::Feature::OrSymbol],
          phone_number_type:
            Telnyx::AdvancedOrderRequest::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AdvancedOrder)
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

      # Returns the advanced number order identified by `order_id`, including its
      # configuration and current state.
      sig do
        params(
          order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AdvancedOrder)
      end
      def retrieve(
        # Unique identifier of the order.
        order_id,
        request_options: {}
      )
      end

      # Returns the advanced number orders associated with the account. Each result
      # includes the order configuration and its current state.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::AdvancedOrderListResponse
        )
      end
      def list(request_options: {})
      end

      # Updates the requirement-group configuration for the specified advanced number
      # order. The response contains the updated advanced order.
      sig do
        params(
          advanced_order_id: String,
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features: T::Array[Telnyx::AdvancedOrderRequest::Feature::OrSymbol],
          phone_number_type:
            Telnyx::AdvancedOrderRequest::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AdvancedOrder)
      end
      def update_requirement_group(
        # Unique identifier of the advanced order.
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
