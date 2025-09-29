# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActivationJobs#update
      class ActivationJobUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute activate_at
        #   The desired activation time. The activation time should be between any of the
        #   activation windows.
        #
        #   @return [Time, nil]
        optional :activate_at, Time

        # @!method initialize(id:, activate_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::ActivationJobUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param activate_at [Time] The desired activation time. The activation time should be between any of the ac
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
