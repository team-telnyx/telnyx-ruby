# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      module Sessions
        # @see Telnyx::Resources::Rooms::Sessions::Actions#mute
        class ActionMuteResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Rooms::Sessions::ActionMuteResponse::Data, nil]
          optional :data, -> { Telnyx::Models::Rooms::Sessions::ActionMuteResponse::Data }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Rooms::Sessions::ActionMuteResponse::Data]

          # @see Telnyx::Models::Rooms::Sessions::ActionMuteResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute result
            #
            #   @return [String, nil]
            optional :result, String

            # @!method initialize(result: nil)
            #   @param result [String]
          end
        end
      end
    end
  end
end
