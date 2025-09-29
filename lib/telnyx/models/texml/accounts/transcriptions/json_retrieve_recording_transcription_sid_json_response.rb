# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Transcriptions
          # @see Telnyx::Resources::Texml::Accounts::Transcriptions::Json#retrieve_recording_transcription_sid_json
          class JsonRetrieveRecordingTranscriptionSidJsonResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute api_version
            #   The version of the API that was used to make the request.
            #
            #   @return [String, nil]
            optional :api_version, String

            # @!attribute call_sid
            #
            #   @return [String, nil]
            optional :call_sid, String

            # @!attribute date_created
            #
            #   @return [Time, nil]
            optional :date_created, Time

            # @!attribute date_updated
            #
            #   @return [Time, nil]
            optional :date_updated, Time

            # @!attribute duration
            #   The duration of this recording, given in seconds.
            #
            #   @return [String, nil]
            optional :duration, String, nil?: true

            # @!attribute recording_sid
            #   Identifier of a resource.
            #
            #   @return [String, nil]
            optional :recording_sid, String

            # @!attribute sid
            #   Identifier of a resource.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute status
            #   The status of the recording transcriptions. The transcription text will be
            #   available only when the status is completed.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status }

            # @!attribute transcription_text
            #   The recording's transcribed text
            #
            #   @return [String, nil]
            optional :transcription_text, String

            # @!attribute uri
            #   The relative URI for the recording transcription resource.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, api_version: nil, call_sid: nil, date_created: nil, date_updated: nil, duration: nil, recording_sid: nil, sid: nil, status: nil, transcription_text: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse}
            #   for more details.
            #
            #   @param account_sid [String]
            #
            #   @param api_version [String] The version of the API that was used to make the request.
            #
            #   @param call_sid [String]
            #
            #   @param date_created [Time]
            #
            #   @param date_updated [Time]
            #
            #   @param duration [String, nil] The duration of this recording, given in seconds.
            #
            #   @param recording_sid [String] Identifier of a resource.
            #
            #   @param sid [String] Identifier of a resource.
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status] The status of the recording transcriptions. The transcription text will be avail
            #
            #   @param transcription_text [String] The recording's transcribed text
            #
            #   @param uri [String] The relative URI for the recording transcription resource.

            # The status of the recording transcriptions. The transcription text will be
            # available only when the status is completed.
            #
            # @see Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse#status
            module Status
              extend Telnyx::Internal::Type::Enum

              IN_PROGRESS = :"in-progress"
              COMPLETED = :completed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
