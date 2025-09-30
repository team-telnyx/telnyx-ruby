# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        # @see Telnyx::Resources::Legacy::Reporting::UsageReports#retrieve_speech_to_text
        class UsageReportRetrieveSpeechToTextParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute end_date
          #
          #   @return [Time, nil]
          optional :end_date, Time

          # @!attribute start_date
          #
          #   @return [Time, nil]
          optional :start_date, Time

          # @!method initialize(end_date: nil, start_date: nil, request_options: {})
          #   @param end_date [Time]
          #   @param start_date [Time]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
