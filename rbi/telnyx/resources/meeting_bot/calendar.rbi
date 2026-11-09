# typed: strong

module Telnyx
  module Resources
    class MeetingBot
      # Connect calendars and manage automatic meeting joins.
      class Calendar
        # Browser redirect after calendar consent. Use the returned oauth_url rather than
        # constructing this request. Verified state identifies the connecting user.
        # Returns HTML for success, cancellation, or failure; no JSON error envelope or
        # bearer token is used.
        sig do
          params(
            code: String,
            error: String,
            state: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(String)
        end
        def retrieve_oauth_callback(
          # Authorization code supplied by the calendar provider.
          code: nil,
          # Authorization error supplied by the calendar provider, such as access_denied.
          error: nil,
          # Unmodified signed state from the authorization URL.
          state: nil,
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
