# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#list
      class JobListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
