# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserAddresses#list
    class UserAddressListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::UserAddress>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::UserAddress] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::UserAddress>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
