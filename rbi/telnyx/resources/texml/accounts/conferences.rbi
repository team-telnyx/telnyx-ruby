# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Conferences
          sig do
            returns(
              Telnyx::Resources::Texml::Accounts::Conferences::Participants
            )
          end
          attr_reader :participants

          # Returns a conference resource.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse
            )
          end
          def retrieve(
            # The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # The id of the account the resource belongs to.
            account_sid:,
            request_options: {}
          )
          end

          # Updates a conference resource.
          sig do
            params(
              conference_sid: String,
              account_sid: String,
              announce_method:
                Telnyx::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod::OrSymbol,
              announce_url: String,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse)
          end
          def update(
            # Path param: The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # Path param: The id of the account the resource belongs to.
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

          # Lists conference resources.
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
            # The id of the account the resource belongs to.
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

          # Lists conference recordings
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
            # The id of the account the resource belongs to.
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
              Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsJsonResponse
            )
          end
          def retrieve_recordings_json(
            # The ConferenceSid that uniquely identifies a conference.
            conference_sid,
            # The id of the account the resource belongs to.
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
