# typed: strong

module Telnyx
  module Resources
    class ExternalRequirements
      # Requirement Groups
      class SubNumberOrders
        # Returns the input fields an action requirement needs and the current requirement
        # action for a sub number order. Action requirements are fulfilled by an external
        # step rather than by uploading documents. Australia mobile ID verification is
        # currently the only action requirement. Once a verification link has been
        # generated, it is returned in `requirement_action.value`.
        sig do
          params(
            sub_number_order_id: String,
            regulatory_requirement_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse
          )
        end
        def retrieve(
          # The ID of the sub number order the requirement belongs to.
          sub_number_order_id,
          # The ID of the regulatory (action) requirement. For Australia mobile ID
          # verification this is `b7c72fb8-fa08-4529-aaf6-b9117d3f3698`.
          regulatory_requirement_id:,
          request_options: {}
        )
        end

        # Submits the end user's details to the external verification provider and returns
        # the requirement action. Australia mobile ID verification is currently the only
        # action requirement. It generates a unique Onfido verification link, returned in
        # `requirement_action.value`, which you share with the end user. The end user's
        # `first_name` and `last_name` must be nested inside a `requirement` object;
        # sending them at the top level is rejected.
        sig do
          params(
            sub_number_order_id: String,
            regulatory_requirement_id: String,
            requirement:
              Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse
          )
        end
        def update(
          # Path param: The ID of the sub number order the requirement belongs to.
          sub_number_order_id,
          # Path param: The ID of the regulatory (action) requirement. For Australia mobile
          # ID verification this is `b7c72fb8-fa08-4529-aaf6-b9117d3f3698`.
          regulatory_requirement_id:,
          # Body param: The end user's identity details for the action requirement.
          # Australia mobile ID verification is currently the only action requirement. It
          # requires `first_name` and `last_name`, the same fields the corresponding GET
          # lists in `fields_required`.
          requirement:,
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
