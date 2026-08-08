# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#list
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta705dfa7312, nil]
            optional :meta, -> { Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta705dfa7312 }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta705dfa7312]
          end
        end
      end
    end
  end
end
