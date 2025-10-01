# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Messaging#delete
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Legacy V2 MDR usage report response
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy] Legacy V2 MDR usage report response
          end
        end
      end
    end
  end
end
