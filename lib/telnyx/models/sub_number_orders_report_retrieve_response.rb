# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrdersReport#retrieve
    class SubNumberOrdersReportRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SubNumberOrdersReportAPI, nil]
      optional :data, -> { Telnyx::SubNumberOrdersReportAPI }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SubNumberOrdersReportAPI]
    end
  end
end
