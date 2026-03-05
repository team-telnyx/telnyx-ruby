# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#delete
    class RoomCompositionDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute room_composition_id
      #
      #   @return [String]
      required :room_composition_id, String

      # @!method initialize(room_composition_id:, request_options: {})
      #   @param room_composition_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
