# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText#create
          class SpeechToTextCreateResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse]
          end
        end
      end
    end
  end
end
