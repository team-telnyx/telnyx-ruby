# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      # @see Telnyx::Resources::PhoneNumberBlocks::Jobs#list
      class JobListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PhoneNumberBlocks::Job>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PhoneNumberBlocks::Job>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
