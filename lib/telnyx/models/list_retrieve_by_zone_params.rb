# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::List#retrieve_by_zone
    class ListRetrieveByZoneParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute channel_zone_id
      #
      #   @return [String]
      required :channel_zone_id, String

      # @!method initialize(channel_zone_id:, request_options: {})
      #   @param channel_zone_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
