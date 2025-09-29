# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#list
    class WirelessBlocklistListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::WirelessBlocklist>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WirelessBlocklist] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::WirelessBlocklist>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
