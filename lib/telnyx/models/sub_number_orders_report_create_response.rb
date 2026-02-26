# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrdersReport#create
    class SubNumberOrdersReportCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SubNumberOrdersReportAPI, nil]
      optional :data, -> { Telnyx::SubNumberOrdersReportAPI }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SubNumberOrdersReportAPI]
    end
  end
end
