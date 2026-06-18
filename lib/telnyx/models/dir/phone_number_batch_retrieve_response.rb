# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumberBatches#retrieve
      class PhoneNumberBatchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A phone-number batch groups all numbers added in a single bulk-add request.
        #   Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
        #   array so you can read per-number status without a separate call, plus a
        #   batch-level `status` summarising the unit's progress.
        #
        #   @return [Telnyx::Models::Dir::PhoneNumberBatch]
        required :data, -> { Telnyx::Dir::PhoneNumberBatch }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse} for more details.
        #
        #   @param data [Telnyx::Models::Dir::PhoneNumberBatch] A phone-number batch groups all numbers added in a single bulk-add request. Teln
      end
    end
  end
end
