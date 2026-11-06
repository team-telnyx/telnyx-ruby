# frozen_string_literal: true

module Telnyx
  module Models
    module CalendarConnections
      class CalendarMeeting < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Tracked calendar meeting ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute attendees
        #   Calendar attendees; identity fields are cleared after the retention window.
        #
        #   @return [Array<Telnyx::Models::CalendarConnections::CalendarMeeting::Attendee>]
        required :attendees,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CalendarConnections::CalendarMeeting::Attendee] }

        # @!attribute bot_will_join
        #   Effective policy decision, not proof that the bot has joined.
        #
        #   @return [Boolean]
        required :bot_will_join, Telnyx::Internal::Type::Boolean

        # @!attribute bot_will_join_override
        #   Explicit override; null follows the connection policy.
        #
        #   @return [Boolean, nil]
        required :bot_will_join_override, Telnyx::Internal::Type::Boolean, nil?: true

        # @!attribute decision
        #   Scheduling decision.
        #
        #   @return [Symbol, Telnyx::Models::CalendarConnections::CalendarMeeting::Decision]
        required :decision, enum: -> { Telnyx::CalendarConnections::CalendarMeeting::Decision }

        # @!attribute end_time
        #   Event end time.
        #
        #   @return [Time, nil]
        required :end_time, Time, nil?: true

        # @!attribute is_external_organizer
        #   Whether the connected calendar user is not the organizer.
        #
        #   @return [Boolean, nil]
        required :is_external_organizer, Telnyx::Internal::Type::Boolean, nil?: true

        # @!attribute organizer
        #
        #   @return [Telnyx::Models::CalendarConnections::CalendarMeeting::Organizer, nil]
        required :organizer, -> { Telnyx::CalendarConnections::CalendarMeeting::Organizer }, nil?: true

        # @!attribute platform
        #   Detected meeting platform.
        #
        #   @return [Symbol, Telnyx::Models::CalendarConnections::CalendarMeeting::Platform]
        required :platform, enum: -> { Telnyx::CalendarConnections::CalendarMeeting::Platform }

        # @!attribute session_id
        #   Linked meeting session ID, or null until one exists.
        #
        #   @return [String, nil]
        required :session_id, String, nil?: true

        # @!attribute start_time
        #   Event start time.
        #
        #   @return [Time]
        required :start_time, Time

        # @!method initialize(id:, attendees:, bot_will_join:, bot_will_join_override:, decision:, end_time:, is_external_organizer:, organizer:, platform:, session_id:, start_time:)
        #   @param id [String] Tracked calendar meeting ID.
        #
        #   @param attendees [Array<Telnyx::Models::CalendarConnections::CalendarMeeting::Attendee>] Calendar attendees; identity fields are cleared after the retention window.
        #
        #   @param bot_will_join [Boolean] Effective policy decision, not proof that the bot has joined.
        #
        #   @param bot_will_join_override [Boolean, nil] Explicit override; null follows the connection policy.
        #
        #   @param decision [Symbol, Telnyx::Models::CalendarConnections::CalendarMeeting::Decision] Scheduling decision.
        #
        #   @param end_time [Time, nil] Event end time.
        #
        #   @param is_external_organizer [Boolean, nil] Whether the connected calendar user is not the organizer.
        #
        #   @param organizer [Telnyx::Models::CalendarConnections::CalendarMeeting::Organizer, nil]
        #
        #   @param platform [Symbol, Telnyx::Models::CalendarConnections::CalendarMeeting::Platform] Detected meeting platform.
        #
        #   @param session_id [String, nil] Linked meeting session ID, or null until one exists.
        #
        #   @param start_time [Time] Event start time.

        class Attendee < Telnyx::Internal::Type::BaseModel
          # @!attribute display_name
          #   Display name.
          #
          #   @return [String, nil]
          required :display_name, String, nil?: true

          # @!attribute email
          #   Email address.
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute optional
          #   Whether attendance is optional.
          #
          #   @return [Boolean, nil]
          required :optional, Telnyx::Internal::Type::Boolean, nil?: true

          # @!attribute response_status
          #   Calendar RSVP status.
          #
          #   @return [String, nil]
          required :response_status, String, nil?: true

          # @!attribute self_
          #   Whether this is the connected calendar user.
          #
          #   @return [Boolean, nil]
          required :self_, Telnyx::Internal::Type::Boolean, api_name: :self, nil?: true

          # @!method initialize(display_name:, email:, optional:, response_status:, self_:)
          #   @param display_name [String, nil] Display name.
          #
          #   @param email [String, nil] Email address.
          #
          #   @param optional [Boolean, nil] Whether attendance is optional.
          #
          #   @param response_status [String, nil] Calendar RSVP status.
          #
          #   @param self_ [Boolean, nil] Whether this is the connected calendar user.
        end

        # Scheduling decision.
        #
        # @see Telnyx::Models::CalendarConnections::CalendarMeeting#decision
        module Decision
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          SCHEDULED = :scheduled
          SKIPPED_POLICY = :skipped_policy
          SKIPPED_NO_URL = :skipped_no_url
          SKIPPED_DUPLICATE = :skipped_duplicate
          SKIPPED_UNSUPPORTED = :skipped_unsupported
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CalendarConnections::CalendarMeeting#organizer
        class Organizer < Telnyx::Internal::Type::BaseModel
          # @!attribute display_name
          #   Display name.
          #
          #   @return [String, nil]
          required :display_name, String, nil?: true

          # @!attribute email
          #   Email address.
          #
          #   @return [String, nil]
          required :email, String, nil?: true

          # @!attribute self_
          #   Whether this is the connected calendar user.
          #
          #   @return [Boolean, nil]
          required :self_, Telnyx::Internal::Type::Boolean, api_name: :self, nil?: true

          # @!method initialize(display_name:, email:, self_:)
          #   @param display_name [String, nil] Display name.
          #
          #   @param email [String, nil] Email address.
          #
          #   @param self_ [Boolean, nil] Whether this is the connected calendar user.
        end

        # Detected meeting platform.
        #
        # @see Telnyx::Models::CalendarConnections::CalendarMeeting#platform
        module Platform
          extend Telnyx::Internal::Type::Enum

          ZOOM = :zoom
          GOOGLE_MEET = :google_meet
          TEAMS = :teams
          WEBEX = :webex
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
