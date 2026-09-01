# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalRequirements
      # Requirement Groups
      class SubNumberOrders
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveParams} for more
        # details.
        #
        # Returns the input fields an action requirement needs and the current requirement
        # action for a sub number order. Action requirements are fulfilled by an external
        # step rather than by uploading documents. Australia mobile ID verification is
        # currently the only action requirement. Once a verification link has been
        # generated, it is returned in `requirement_action.value`.
        #
        # @overload retrieve(sub_number_order_id, regulatory_requirement_id:, request_options: {})
        #
        # @param sub_number_order_id [String] The ID of the sub number order the requirement belongs to.
        #
        # @param regulatory_requirement_id [String] The ID of the regulatory (action) requirement. For Australia mobile ID verificat
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveParams
        def retrieve(sub_number_order_id, params)
          parsed, options = Telnyx::ExternalRequirements::SubNumberOrderRetrieveParams.dump_request(params)
          regulatory_requirement_id =
            parsed.delete(:regulatory_requirement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: [
              "external_requirements/%1$s/sub_number_orders/%2$s",
              regulatory_requirement_id,
              sub_number_order_id
            ],
            model: Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams} for more
        # details.
        #
        # Submits the end user's details to the external verification provider and returns
        # the requirement action. Australia mobile ID verification is currently the only
        # action requirement. It generates a unique Onfido verification link, returned in
        # `requirement_action.value`, which you share with the end user. The end user's
        # `first_name` and `last_name` must be nested inside a `requirement` object;
        # sending them at the top level is rejected.
        #
        # @overload update(sub_number_order_id, regulatory_requirement_id:, requirement:, request_options: {})
        #
        # @param sub_number_order_id [String] Path param: The ID of the sub number order the requirement belongs to.
        #
        # @param regulatory_requirement_id [String] Path param: The ID of the regulatory (action) requirement. For Australia mobile
        #
        # @param requirement [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams::Requirement] Body param: The end user's identity details for the action requirement. Australi
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse]
        #
        # @see Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams
        def update(sub_number_order_id, params)
          parsed, options = Telnyx::ExternalRequirements::SubNumberOrderUpdateParams.dump_request(params)
          regulatory_requirement_id =
            parsed.delete(:regulatory_requirement_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "external_requirements/%1$s/sub_number_orders/%2$s",
              regulatory_requirement_id,
              sub_number_order_id
            ],
            body: parsed,
            model: Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
