# typed: strong

module Telnyx
  module Resources
    class InexplicitNumberOrders
      # Create an inexplicit number order to programmatically purchase phone numbers
      # without specifying exact numbers.
      sig do
        params(
          ordering_groups:
            T::Array[
              Telnyx::InexplicitNumberOrderCreateParams::OrderingGroup::OrHash
            ],
          billing_group_id: String,
          connection_id: String,
          customer_reference: String,
          messaging_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InexplicitNumberOrderCreateResponse)
      end
      def create(
        # Group(s) of numbers to order. You can have multiple ordering_groups objects
        # added to a single request.
        ordering_groups:,
        # Billing group id to apply to phone numbers that are purchased
        billing_group_id: nil,
        # Connection id to apply to phone numbers that are purchased
        connection_id: nil,
        # Reference label for the customer
        customer_reference: nil,
        # Messaging profile id to apply to phone numbers that are purchased
        messaging_profile_id: nil,
        request_options: {}
      )
      end

      # Get an existing inexplicit number order by ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InexplicitNumberOrderRetrieveResponse)
      end
      def retrieve(
        # Identifies the inexplicit number order
        id,
        request_options: {}
      )
      end

      # Get a paginated list of inexplicit number orders.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InexplicitNumberOrderListResponse)
      end
      def list(
        # The page number to load
        page_number: nil,
        # The size of the page
        page_size: nil,
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
