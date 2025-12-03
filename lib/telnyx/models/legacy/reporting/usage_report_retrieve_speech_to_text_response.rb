# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        # @see Telnyx::Resources::Legacy::Reporting::UsageReports#retrieve_speech_to_text
        class UsageReportRetrieveSpeechToTextResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Object, nil]
          optional :data, Telnyx::Internal::Type::Unknown

          # @!method initialize(data: nil)
          #   @param data [Object]
        end
      end
    end
  end
end
