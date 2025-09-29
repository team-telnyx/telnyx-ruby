# typed: strong

module Telnyx
  module Resources
    class SubNumberOrders
      # Get an existing sub number order.
      sig do
        params(
          sub_number_order_id: String,
          filter: Telnyx::SubNumberOrderRetrieveParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrderRetrieveResponse)
      end
      def retrieve(
        # The sub number order ID.
        sub_number_order_id,
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[include_phone_numbers]
        filter: nil,
        request_options: {}
      )
      end

      # Updates a sub number order.
      sig do
        params(
          sub_number_order_id: String,
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrderUpdateResponse)
      end
      def update(
        # The sub number order ID.
        sub_number_order_id,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      # Get a paginated list of sub number orders.
      sig do
        params(
          filter: Telnyx::SubNumberOrderListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrderListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[order_request_id], filter[country_code], filter[phone_number_type],
        # filter[phone_numbers_count]
        filter: nil,
        request_options: {}
      )
      end

      # Allows you to cancel a sub number order in 'pending' status.
      sig do
        params(
          sub_number_order_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrderCancelResponse)
      end
      def cancel(
        # The ID of the sub number order.
        sub_number_order_id,
        request_options: {}
      )
      end

      # Update requirement group for a sub number order
      sig do
        params(
          id: String,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse)
      end
      def update_requirement_group(
        # The ID of the sub number order
        id,
        # The ID of the requirement group to associate
        requirement_group_id:,
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
