# frozen_string_literal: true

module Telnyx
  module Models
    class SessionStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #   Status transition details.
      #
      #   @return [Telnyx::Models::SessionStatusChangedWebhookEvent::Data]
      required :data, -> { Telnyx::SessionStatusChangedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::SessionStatusChangedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::SessionStatusChangedWebhookEvent::Event }

      # @!attribute occurred_at
      #   When the event occurred.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute version
      #   Envelope version.
      #
      #   @return [String]
      required :version, String

      # @!method initialize(id:, data:, event:, occurred_at:, version:)
      #   @param id [String] Unique event id; deduplicate deliveries on it.
      #
      #   @param data [Telnyx::Models::SessionStatusChangedWebhookEvent::Data] Status transition details.
      #
      #   @param event [Symbol, Telnyx::Models::SessionStatusChangedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::SessionStatusChangedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute recording
        #   Whether the session is recording at this lifecycle edge.
        #
        #   @return [Boolean]
        required :recording, Telnyx::Internal::Type::Boolean

        # @!attribute session_id
        #   The meeting session this event belongs to.
        #
        #   @return [String]
        required :session_id, String

        # @!attribute status
        #   The new session status.
        #
        #   @return [String]
        required :status, String

        # @!attribute status_detail
        #   Additional detail about the status (for example `timeout_exceeded_everyone_left`
        #   or `cancelled`), or null.
        #
        #   @return [String, nil]
        required :status_detail, String, nil?: true

        # @!method initialize(recording:, session_id:, status:, status_detail:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SessionStatusChangedWebhookEvent::Data} for more details.
        #
        #   Status transition details.
        #
        #   @param recording [Boolean] Whether the session is recording at this lifecycle edge.
        #
        #   @param session_id [String] The meeting session this event belongs to.
        #
        #   @param status [String] The new session status.
        #
        #   @param status_detail [String, nil] Additional detail about the status (for example `timeout_exceeded_everyone_left`
      end

      # Event type.
      #
      # @see Telnyx::Models::SessionStatusChangedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        SESSION_STATUS_CHANGED = :"session.status_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
