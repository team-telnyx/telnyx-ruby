# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging#list
          class MessagingListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta, nil]
            optional :meta, -> { Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta]
          end
        end
      end
    end
  end
end
