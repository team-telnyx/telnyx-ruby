# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class ActionRequirements
        # Returns a list of action requirements for a specific porting order.
        sig do
          params(
            porting_order_id: String,
            filter:
              Telnyx::PortingOrders::ActionRequirementListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::ActionRequirementListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::ActionRequirementListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::ActionRequirementListResponse
          )
        end
        def list(
          # The ID of the porting order
          porting_order_id,
          # Consolidated filter parameter (deepObject style). Originally: filter[id][in][],
          # filter[requirement_type_id], filter[action_type], filter[status]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        # Initiates a specific action requirement for a porting order.
        sig do
          params(
            id: String,
            porting_order_id: String,
            params:
              Telnyx::PortingOrders::ActionRequirementInitiateParams::Params::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse
          )
        end
        def initiate(
          # Path param: The ID of the action requirement
          id,
          # Path param: The ID of the porting order
          porting_order_id:,
          # Body param: Required information for initiating the action requirement for AU ID
          # verification.
          params:,
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
end
