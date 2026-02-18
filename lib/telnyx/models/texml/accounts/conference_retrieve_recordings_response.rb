# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Conferences#retrieve_recordings
        class ConferenceRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute end_
          #   The number of the last element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :end_, Integer, api_name: :end

          # @!attribute first_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?page=0&pagesize=20
          #
          #   @return [String, nil]
          optional :first_page_uri, String

          # @!attribute next_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          #
          #   @return [String, nil]
          optional :next_page_uri, String

          # @!attribute page
          #   Current page number, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :page, Integer

          # @!attribute page_size
          #   The number of items on the page
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute participants
          #   List of participant resources.
          #
          #   @return [Array<Hash{Symbol=>Object}>, nil]
          optional :participants,
                   Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

          # @!attribute recordings
          #
          #   @return [Array<Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording>, nil]
          optional :recordings,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording] }

          # @!attribute start
          #   The number of the first element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :start, Integer

          # @!attribute uri
          #   The URI of the current page.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, participants: nil, recordings: nil, start: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse} for more
          #   details.
          #
          #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
          #
          #   @param first_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba
          #
          #   @param next_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba
          #
          #   @param page [Integer] Current page number, zero-indexed.
          #
          #   @param page_size [Integer] The number of items on the page
          #
          #   @param participants [Array<Hash{Symbol=>Object}>] List of participant resources.
          #
          #   @param recordings [Array<Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording>]
          #
          #   @param start [Integer] The number of the first element on the page, zero-indexed.
          #
          #   @param uri [String] The URI of the current page.

          class Recording < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute call_sid
            #   The identifier of the related participant's call.
            #
            #   @return [String, nil]
            optional :call_sid, String

            # @!attribute channels
            #   The number of channels in the recording.
            #
            #   @return [Integer, nil]
            optional :channels, Integer

            # @!attribute conference_sid
            #   The identifier of the related conference.
            #
            #   @return [String, nil]
            optional :conference_sid, String

            # @!attribute date_created
            #   The timestamp of when the resource was created.
            #
            #   @return [String, nil]
            optional :date_created, String

            # @!attribute date_updated
            #   The timestamp of when the resource was last updated.
            #
            #   @return [String, nil]
            optional :date_updated, String

            # @!attribute duration
            #   Duratin of the recording in seconds.
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute error_code
            #   The recording error, if any.
            #
            #   @return [String, nil]
            optional :error_code, String

            # @!attribute media_url
            #   The URL to use to download the recording.
            #
            #   @return [String, nil]
            optional :media_url, String

            # @!attribute sid
            #   The unique identifier of the recording.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute source
            #   How the recording was started.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source, nil]
            optional :source,
                     enum: -> { Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source }

            # @!attribute start_time
            #   The timestamp of when the recording was started.
            #
            #   @return [String, nil]
            optional :start_time, String

            # @!attribute status
            #   The status of the recording.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status }

            # @!attribute subresource_uris
            #   A list of related resources identified by their relative URIs.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :subresource_uris, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute uri
            #   The relative URI for this recording.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, call_sid: nil, channels: nil, conference_sid: nil, date_created: nil, date_updated: nil, duration: nil, error_code: nil, media_url: nil, sid: nil, source: nil, start_time: nil, status: nil, subresource_uris: nil, uri: nil)
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param call_sid [String] The identifier of the related participant's call.
            #
            #   @param channels [Integer] The number of channels in the recording.
            #
            #   @param conference_sid [String] The identifier of the related conference.
            #
            #   @param date_created [String] The timestamp of when the resource was created.
            #
            #   @param date_updated [String] The timestamp of when the resource was last updated.
            #
            #   @param duration [Integer] Duratin of the recording in seconds.
            #
            #   @param error_code [String] The recording error, if any.
            #
            #   @param media_url [String] The URL to use to download the recording.
            #
            #   @param sid [String] The unique identifier of the recording.
            #
            #   @param source [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source] How the recording was started.
            #
            #   @param start_time [String] The timestamp of when the recording was started.
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status] The status of the recording.
            #
            #   @param subresource_uris [Hash{Symbol=>Object}] A list of related resources identified by their relative URIs.
            #
            #   @param uri [String] The relative URI for this recording.

            # How the recording was started.
            #
            # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording#source
            module Source
              extend Telnyx::Internal::Type::Enum

              DIAL_VERB = :DialVerb
              CONFERENCE = :Conference
              OUTBOUND_API = :OutboundAPI
              TRUNKING = :Trunking
              RECORD_VERB = :RecordVerb
              START_CALL_RECORDING_API = :StartCallRecordingAPI
              START_CONFERENCE_RECORDING_API = :StartConferenceRecordingAPI

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of the recording.
            #
            # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PROCESSING = :processing
              ABSENT = :absent
              COMPLETED = :completed
              DELETED = :deleted

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
