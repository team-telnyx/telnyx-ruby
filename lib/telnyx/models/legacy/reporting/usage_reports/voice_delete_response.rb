# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Voice#delete
          class VoiceDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Legacy V2 CDR usage report response
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy] Legacy V2 CDR usage report response
          end
        end
      end
    end
  end
end
