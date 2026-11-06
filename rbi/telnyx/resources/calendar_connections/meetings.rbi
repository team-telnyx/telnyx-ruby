# typed: strong

module Telnyx
  module Resources
    class CalendarConnections
      # Connect calendars and manage automatic meeting joins.
      class Meetings
        # Set an individual meeting override: true opts in, false opts out, null follows
        # the connection policy. A supported meeting link is required. Changes re-evaluate
        # the meeting immediately; poll the linked session for its final lifecycle
        # outcome.
        sig do
          params(
            meeting_id: String,
            id: String,
            bot_will_join: T.nilable(T::Boolean),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::CalendarConnections::MeetingUpdateResponse)
        end
        def update(
          # Path param: Tracked meeting ID.
          meeting_id,
          # Path param: Calendar connection ID.
          id:,
          # Body param: True opts in, false opts out, null follows connection policy. A
          # supported meeting URL is still required.
          bot_will_join:,
          request_options: {}
        )
        end

        # List tracked meetings in a window. Defaults from now through seven days from
        # now. from must not exceed to and the window must not exceed 31 days.
        # bot_will_join is the effective policy decision; check session_id and the linked
        # session status for actual attendance.
        sig do
          params(
            id: String,
            from: Time,
            to: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::CalendarConnections::MeetingListResponse)
        end
        def list(
          # Calendar connection ID.
          id,
          # Window start; defaults to now.
          from: nil,
          # Window end; defaults to seven days from now.
          to: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
