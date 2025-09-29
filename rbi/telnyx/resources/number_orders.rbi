# typed: strong

module Telnyx
  module Resources
    class NumberOrders
      # Creates a phone number order.
      sig do
        params(
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          phone_numbers:
            T::Array[Telnyx::NumberOrderCreateParams::PhoneNumber::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderCreateResponse)
      end
      def create(
        # Identifies the billing group associated with the phone number.
        billing_group_id: nil,
        # Identifies the connection associated with this phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        phone_numbers: nil,
        request_options: {}
      )
      end

      # Get an existing phone number order.
      sig do
        params(
          number_order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderRetrieveResponse)
      end
      def retrieve(
        # The number order ID.
        number_order_id,
        request_options: {}
      )
      end

      # Updates a phone number order.
      sig do
        params(
          number_order_id: String,
          customer_reference: String,
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderUpdateResponse)
      end
      def update(
        # The number order ID.
        number_order_id,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      # Get a paginated list of number orders.
      sig do
        params(
          filter: Telnyx::NumberOrderListParams::Filter::OrHash,
          page: Telnyx::NumberOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberOrderListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers_count], filter[customer_reference],
        # filter[requirements_met]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
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
