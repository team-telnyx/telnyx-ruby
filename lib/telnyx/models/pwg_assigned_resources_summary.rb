# frozen_string_literal: true

module Telnyx
  module Models
    class PwgAssignedResourcesSummary < Telnyx::Internal::Type::BaseModel
      response_only do
        # @!attribute count
        #   The current count of a resource type assigned to the Private Wireless Gateway.
        #
        #   @return [Integer, nil]
        optional :count, Integer

        # @!attribute record_type
        #   The type of the resource assigned to the Private Wireless Gateway.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(count: nil, record_type: nil)
      #   The summary of the resource that have been assigned to the Private Wireless
      #   Gateway.
      #
      #   @param count [Integer] The current count of a resource type assigned to the Private Wireless Gateway.
      #
      #   @param record_type [String] The type of the resource assigned to the Private Wireless Gateway.
    end
  end
end
