# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#retrieve
          class VoiceRetrieveResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Response object for CDR detailed report
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse] Response object for CDR detailed report
          end
        end
      end
    end
  end
end
