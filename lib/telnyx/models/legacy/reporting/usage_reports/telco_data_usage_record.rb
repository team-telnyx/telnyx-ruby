# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataUsageRecord < Telnyx::Internal::Type::BaseModel
            # @!attribute aggregations
            #   List of aggregations by lookup type
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataAggregation>, nil]
            optional :aggregations,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation] }

            # @!attribute record_type
            #   Record type identifier
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute user_id
            #   User ID
            #
            #   @return [String, nil]
            optional :user_id, String

            # @!method initialize(aggregations: nil, record_type: nil, user_id: nil)
            #   @param aggregations [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataAggregation>] List of aggregations by lookup type
            #
            #   @param record_type [String] Record type identifier
            #
            #   @param user_id [String] User ID
          end
        end
      end
    end
  end
end
