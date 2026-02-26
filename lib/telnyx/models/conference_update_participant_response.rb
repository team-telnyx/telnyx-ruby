# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#update_participant
    class ConferenceUpdateParticipantResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipant, nil]
      optional :data, -> { Telnyx::ConferenceParticipant }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipant]
    end
  end
end
