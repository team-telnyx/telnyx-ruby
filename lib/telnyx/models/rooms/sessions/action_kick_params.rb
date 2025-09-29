# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      module Sessions
        # @see Telnyx::Resources::Rooms::Sessions::Actions#kick
        class ActionKickParams < Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
