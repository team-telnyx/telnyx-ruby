# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#list
    class PrivateWirelessGatewayListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PrivateWirelessGateway>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PrivateWirelessGateway] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PrivateWirelessGateway>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
