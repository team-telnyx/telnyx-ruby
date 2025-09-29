# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InboundChannels#update
    class InboundChannelUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute channels
      #   The new number of concurrent channels for the account
      #
      #   @return [Integer]
      required :channels, Integer

      # @!method initialize(channels:, request_options: {})
      #   @param channels [Integer] The new number of concurrent channels for the account
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
