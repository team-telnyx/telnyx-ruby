# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActionRequirements#initiate
      class ActionRequirementInitiateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute porting_order_id
        #
        #   @return [String]
        required :porting_order_id, String

        # @!attribute params
        #   Required information for initiating the action requirement for AU ID
        #   verification.
        #
        #   @return [Telnyx::Models::PortingOrders::ActionRequirementInitiateParams::Params]
        required :params, -> { Telnyx::PortingOrders::ActionRequirementInitiateParams::Params }

        # @!method initialize(porting_order_id:, params:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::ActionRequirementInitiateParams} for more
        #   details.
        #
        #   @param porting_order_id [String]
        #
        #   @param params [Telnyx::Models::PortingOrders::ActionRequirementInitiateParams::Params] Required information for initiating the action requirement for AU ID verificatio
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Params < Telnyx::Internal::Type::BaseModel
          # @!attribute first_name
          #   The first name of the person that will perform the verification flow.
          #
          #   @return [String]
          required :first_name, String

          # @!attribute last_name
          #   The last name of the person that will perform the verification flow.
          #
          #   @return [String]
          required :last_name, String

          # @!method initialize(first_name:, last_name:)
          #   Required information for initiating the action requirement for AU ID
          #   verification.
          #
          #   @param first_name [String] The first name of the person that will perform the verification flow.
          #
          #   @param last_name [String] The last name of the person that will perform the verification flow.
        end
      end
    end
  end
end
