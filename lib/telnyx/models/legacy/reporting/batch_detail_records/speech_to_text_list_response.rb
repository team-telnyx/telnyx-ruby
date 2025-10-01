# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText#list
          class SpeechToTextListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse] }

            # @!method initialize(data: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse>]
          end
        end
      end
    end
  end
end
