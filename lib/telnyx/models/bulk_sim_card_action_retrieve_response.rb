# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BulkSimCardActions#retrieve
    class BulkSimCardActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BulkSimCardActionDetailed, nil]
      optional :data, -> { Telnyx::BulkSimCardActionDetailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BulkSimCardActionDetailed]
    end
  end
end
