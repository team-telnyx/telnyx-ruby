# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InboundChannels#list
    class InboundChannelListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InboundChannelListResponse::Data, nil]
      optional :data, -> { Telnyx::Models::InboundChannelListResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InboundChannelListResponse::Data]

      # @see Telnyx::Models::InboundChannelListResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute channels
        #   The current number of concurrent channels set for the account
        #
        #   @return [Integer, nil]
        optional :channels, Integer

        # @!attribute record_type
        #   Identifies the type of the response
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(channels: nil, record_type: nil)
        #   @param channels [Integer] The current number of concurrent channels set for the account
        #
        #   @param record_type [String] Identifies the type of the response
      end
    end
  end
end
