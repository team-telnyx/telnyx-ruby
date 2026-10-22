# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#delete_batch
      class JobDeleteBatchResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob, nil]
        optional :data, -> { Telnyx::PhoneNumbers::NumbersPhoneNumbersJob }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumbers::NumbersPhoneNumbersJob]
      end
    end
  end
end
