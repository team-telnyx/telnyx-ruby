# typed: strong

module Telnyx
  module Resources
    class NumberBlockOrders
      # Creates a phone number block order.
      sig do
        params(
          range: Integer,
          starting_number: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberBlockOrderCreateResponse)
      end
      def create(
        # The phone number range included in the block.
        range:,
        # Starting phone number block
        starting_number:,
        # Identifies the connection associated with this phone number.
        connection_id: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        request_options: {}
      )
      end

      # Get an existing phone number block order.
      sig do
        params(
          number_block_order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberBlockOrderRetrieveResponse)
      end
      def retrieve(
        # The number block order ID.
        number_block_order_id,
        request_options: {}
      )
      end

      # Get a paginated list of number block orders.
      sig do
        params(
          filter: Telnyx::NumberBlockOrderListParams::Filter::OrHash,
          page: Telnyx::NumberBlockOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::NumberBlockOrder])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.starting_number]
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
