# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActionRequirements#initiate
      class ActionRequirementInitiateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::PortingActionRequirement, nil]
        optional :data, -> { Telnyx::PortingOrders::PortingActionRequirement }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::PortingActionRequirement]
      end
    end
  end
end
