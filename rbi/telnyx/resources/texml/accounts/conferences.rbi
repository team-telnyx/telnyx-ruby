# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        # TeXML REST Commands
        class Conferences
          # TeXML REST Commands
          sig do
            returns(
              Telnyx::Resources::Texml::Accounts::Conferences::Participants
            )
          end
          attr_reader :participants

          # Returns a single conference resource for the account by its ConferenceSid.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Texml::Accounts::ConferenceResource)
          end
          def retrieve(
            # The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
            request_options: {}
          )
          end

          # Updates the specified conference resource, for example to modify its status, and
          # returns the updated conference.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              announce_method:
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol,
              announce_url: String,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Texml::Accounts::ConferenceResource)
          end
          def update(
            # Path param: The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # Path param: The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
            # Body param: The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            announce_method: nil,
            # Body param: The URL we should call to announce something into the conference.
            # The URL may return an MP3 file, a WAV file, or a TwiML document that contains
            # `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
            announce_url: nil,
            # Body param: The new status of the resource. Specifying `completed` will end the
            # conference and hang up all participants.
            status: nil,
            request_options: {}
          )
          end

          # Returns a paginated list of conference resources for the account, with support
          # for filtering by friendly name, status, and creation or update dates.
          sig do
            params(
              account_sid: String,
              date_created: String,
              date_updated: String,
              friendly_name: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              status:
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse
            )
          end
          def retrieve_conferences(
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid,
            # Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also
            # accepts inequality operators, e.g. DateCreated>=2023-05-22.
            date_created: nil,
            # Filters conferences by the time they were last updated. Expected format is
            # YYYY-MM-DD. Also accepts inequality operators, e.g. DateUpdated>=2023-05-22.
            date_updated: nil,
            # Filters conferences by their friendly name.
            friendly_name: nil,
            # The number of the page to be displayed, zero-indexed, should be used in
            # conjuction with PageToken.
            page: nil,
            # The number of records to be displayed on a page
            page_size: nil,
            # Used to request the next page of results.
            page_token: nil,
            # Filters conferences by status.
            status: nil,
            request_options: {}
          )
          end

          # Returns the list of recordings made for the specified conference.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse
            )
          end
          def retrieve_recordings(
            # The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
            request_options: {}
          )
          end

          # Returns recordings for a conference identified by conference_sid.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Texml::Accounts::Calls::TexmlGetCallRecordingsResponseBody
            )
          end
          def retrieve_recordings_json(
            # The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
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
end
