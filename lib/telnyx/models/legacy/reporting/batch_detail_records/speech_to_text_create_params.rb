# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText#create
          class SpeechToTextCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute end_date
            #   End date in ISO format with timezone (date range must be up to one month)
            #
            #   @return [Time]
            required :end_date, Time

            # @!attribute start_date
            #   Start date in ISO format with timezone
            #
            #   @return [Time]
            required :start_date, Time

            # @!method initialize(end_date:, start_date:, request_options: {})
            #   @param end_date [Time] End date in ISO format with timezone (date range must be up to one month)
            #
            #   @param start_date [Time] Start date in ISO format with timezone
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
