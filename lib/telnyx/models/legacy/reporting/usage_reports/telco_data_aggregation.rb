# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataAggregation < Telnyx::Internal::Type::BaseModel
            # @!attribute currency
            #   Currency code
            #
            #   @return [String, nil]
            optional :currency, String

            # @!attribute total_cost
            #   Total cost for this aggregation
            #
            #   @return [Float, nil]
            optional :total_cost, Float

            # @!attribute total_dips
            #   Total number of lookups performed
            #
            #   @return [Integer, nil]
            optional :total_dips, Integer

            # @!attribute type
            #   Type of telco data lookup
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(currency: nil, total_cost: nil, total_dips: nil, type: nil)
            #   @param currency [String] Currency code
            #
            #   @param total_cost [Float] Total cost for this aggregation
            #
            #   @param total_dips [Integer] Total number of lookups performed
            #
            #   @param type [String] Type of telco data lookup
          end
        end
      end
    end
  end
end
