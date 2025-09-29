# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InboundChannels#update
    class InboundChannelUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InboundChannelUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::InboundChannelUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InboundChannelUpdateResponse::Data]

      # @see Telnyx::Models::InboundChannelUpdateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute channels
        #   The number of channels set for the account
        #
        #   @return [Integer, nil]
        optional :channels, Integer

        # @!attribute record_type
        #   Identifies the type of the response
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(channels: nil, record_type: nil)
        #   @param channels [Integer] The number of channels set for the account
        #
        #   @param record_type [String] Identifies the type of the response
      end
    end
  end
end
