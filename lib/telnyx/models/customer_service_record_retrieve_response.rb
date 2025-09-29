# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#retrieve
    class CustomerServiceRecordRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CustomerServiceRecord, nil]
      optional :data, -> { Telnyx::CustomerServiceRecord }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CustomerServiceRecord]
    end
  end
end
