# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#list
    class NumberOrderPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NumberOrderPhoneNumber>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberOrderPhoneNumber] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NumberOrderPhoneNumber>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
