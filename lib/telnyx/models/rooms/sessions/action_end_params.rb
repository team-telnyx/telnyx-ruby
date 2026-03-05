# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      module Sessions
        # @see Telnyx::Resources::Rooms::Sessions::Actions#end_
        class ActionEndParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute room_session_id
          #
          #   @return [String]
          required :room_session_id, String

          # @!method initialize(room_session_id:, request_options: {})
          #   @param room_session_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
