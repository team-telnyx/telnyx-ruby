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
      #   @return [Telnyx::Models::AccessIPAddressListResponse::Meta]
      required :meta, -> { Telnyx::Models::AccessIPAddressListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::AccessIPAddressResponse>]
      #   @param meta [Telnyx::Models::AccessIPAddressListResponse::Meta]

      # @see Telnyx::Models::AccessIPAddressListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
