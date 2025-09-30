# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChannelZones#update
    class ChannelZoneUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute channels
      #   The number of reserved channels
      #
      #   @return [Integer]
      required :channels, Integer

      # @!method initialize(channels:, request_options: {})
      #   @param channels [Integer] The number of reserved channels
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
