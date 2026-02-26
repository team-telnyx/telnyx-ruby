# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#retrieve_participant
    class ConferenceRetrieveParticipantResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipant, nil]
      optional :data, -> { Telnyx::ConferenceParticipant }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipant]
    end
  end
end
