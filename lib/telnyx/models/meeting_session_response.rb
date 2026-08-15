# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#create
    class MeetingSessionResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Represents a meeting session. All serializer fields are present and required;
      #   nullable fields use null when absent. No actor, provider-bot, idempotency,
      #   routing, key, or internal fields are exposed.
      #
      #   @return [Telnyx::Models::MeetingSession]
      required :data, -> { Telnyx::MeetingSession }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionResponse} for more details.
      #
      #   @param data [Telnyx::Models::MeetingSession] Represents a meeting session. All serializer fields are present and required; nu
    end
  end
end
