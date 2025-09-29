# frozen_string_literal: true

module Telnyx
  module Models
    module Wireless
      # @see Telnyx::Resources::Wireless::DetailRecordsReports#list
      class DetailRecordsReportListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Wireless::WdrReport>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Wireless::WdrReport] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::Wireless::WdrReport>]
      end
    end
  end
end
