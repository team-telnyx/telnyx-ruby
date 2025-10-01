# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Messaging#delete
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse]
          end
        end
      end
    end
  end
end
