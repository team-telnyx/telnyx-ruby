# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActivationJobs#retrieve
      class ActivationJobRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrdersActivationJob, nil]
        optional :data, -> { Telnyx::PortingOrdersActivationJob }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrdersActivationJob]
      end
    end
  end
end
