# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPConnections#list
    class IPConnectionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::IPConnection>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::IPConnection] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ConnectionsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::IPConnection>]
      #   @param meta [Telnyx::Models::ConnectionsPaginationMeta]
    end
  end
end
