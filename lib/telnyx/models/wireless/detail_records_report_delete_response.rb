# frozen_string_literal: true

module Telnyx
  module Models
    module Wireless
      # @see Telnyx::Resources::Wireless::DetailRecordsReports#delete
      class DetailRecordsReportDeleteResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Wireless::WdrReport, nil]
        optional :data, -> { Telnyx::Wireless::WdrReport }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Wireless::WdrReport]
      end
    end
  end
end
