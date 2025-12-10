# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Addresses#list
    class AddressListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Address>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Address] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Address>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
