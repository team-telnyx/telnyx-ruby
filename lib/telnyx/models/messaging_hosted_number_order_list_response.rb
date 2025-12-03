# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#list
    class MessagingHostedNumberOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingHostedNumberOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingHostedNumberOrder] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingHostedNumberOrder>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
