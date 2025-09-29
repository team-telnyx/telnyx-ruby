# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#create
      class MdrUsageReportCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Reports::MdrUsageReport, nil]
        optional :data, -> { Telnyx::Reports::MdrUsageReport }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Reports::MdrUsageReport]
      end
    end
  end
end
