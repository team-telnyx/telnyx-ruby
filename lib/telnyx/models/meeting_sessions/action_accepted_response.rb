# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Actions#send_chat
      class ActionAcceptedResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MeetingSessions::ActionAcceptedResponse::Data]
        required :data, -> { Telnyx::MeetingSessions::ActionAcceptedResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::MeetingSessions::ActionAcceptedResponse::Data]

        # @see Telnyx::Models::MeetingSessions::ActionAcceptedResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute accepted
          #
          #   @return [Boolean, true]
          required :accepted, const: true

          # @!method initialize(accepted: true)
          #   @param accepted [Boolean, true]
        end
      end
    end
  end
end
