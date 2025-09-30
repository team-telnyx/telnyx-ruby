# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#retrieve
    class MessagingHostedNumberOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessagingHostedNumberOrder, nil]
      optional :data, -> { Telnyx::MessagingHostedNumberOrder }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessagingHostedNumberOrder]
    end
  end
end
