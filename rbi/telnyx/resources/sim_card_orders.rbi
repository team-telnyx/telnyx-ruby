# typed: strong

module Telnyx
  module Resources
    class SimCardOrders
      # Creates a new order for SIM cards.
      sig do
        params(
          address_id: String,
          quantity: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardOrderCreateResponse)
      end
      def create(
        # Uniquely identifies the address for the order.
        address_id:,
        # The amount of SIM cards to order.
        quantity:,
        request_options: {}
      )
      end

      # Get a single SIM card order by its ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardOrderRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Get all SIM card orders according to filters.
      sig do
        params(
          filter: Telnyx::SimCardOrderListParams::Filter::OrHash,
          page: Telnyx::SimCardOrderListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardOrderListResponse)
      end
      def list(
        # Consolidated filter parameter for SIM card orders (deepObject style).
        # Originally: filter[created_at], filter[updated_at], filter[quantity],
        # filter[cost.amount], filter[cost.currency], filter[address.id],
        # filter[address.street_address], filter[address.extended_address],
        # filter[address.locality], filter[address.administrative_area],
        # filter[address.country_code], filter[address.postal_code]
        filter: nil,
        # Consolidated pagination parameter (deepObject style). Originally: page[number],
        # page[size]
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
