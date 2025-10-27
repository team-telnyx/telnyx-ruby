# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPAddress#list
    class AccessIPAddressListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AccessIPAddressResponse>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AccessIPAddressResponse] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMetaCloudflareIPListSync]
      required :meta, -> { Telnyx::PaginationMetaCloudflareIPListSync }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::AccessIPAddressResponse>]
      #   @param meta [Telnyx::Models::PaginationMetaCloudflareIPListSync]
    end
  end
end
