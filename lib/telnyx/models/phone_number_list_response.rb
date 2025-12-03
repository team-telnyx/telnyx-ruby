# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#list
    class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PhoneNumberDetailed>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberDetailed] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PhoneNumberDetailed>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
