# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Tunnels#list
    class TunnelListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Tunnel>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Tunnel] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NetappsCursorPaginationMeta, nil]
      optional :meta, -> { Telnyx::NetappsCursorPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Tunnel>]
      #   @param meta [Telnyx::Models::NetappsCursorPaginationMeta]
    end
  end
end
