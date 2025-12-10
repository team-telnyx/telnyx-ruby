# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FqdnConnections#list
    class FqdnConnectionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::FqdnConnection>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::FqdnConnection] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ConnectionsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::FqdnConnection>]
      #   @param meta [Telnyx::Models::ConnectionsPaginationMeta]
    end
  end
end
