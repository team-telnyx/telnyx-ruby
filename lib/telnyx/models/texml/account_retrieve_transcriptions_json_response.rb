# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Accounts#retrieve_transcriptions_json
      class AccountRetrieveTranscriptionsJsonResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute end_
        #   The number of the last element on the page, zero-indexed
        #
        #   @return [Integer, nil]
        optional :end_, Integer, api_name: :end

        # @!attribute first_page_uri
        #   Relative uri to the first page of the query results
        #
        #   @return [String, nil]
        optional :first_page_uri, String

        # @!attribute next_page_uri
        #   Relative uri to the next page of the query results
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

        # @!attribute previous_page_uri
        #   Relative uri to the previous page of the query results
        #
        #   @return [String, nil]
        optional :previous_page_uri, String

        # @!attribute start
        #   The number of the first element on the page, zero-indexed.
        #
        #   @return [Integer, nil]
        optional :start, Integer

        # @!attribute transcriptions
        #
        #   @return [Array<Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription>, nil]
        optional :transcriptions,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription] }

        # @!attribute uri
        #   The URI of the current page.
        #
        #   @return [String, nil]
        optional :uri, String

        # @!method initialize(end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, previous_page_uri: nil, start: nil, transcriptions: nil, uri: nil)
        #   @param end_ [Integer] The number of the last element on the page, zero-indexed
        #
        #   @param first_page_uri [String] Relative uri to the first page of the query results
        #
        #   @param next_page_uri [String] Relative uri to the next page of the query results
        #
        #   @param page [Integer] Current page number, zero-indexed.
        #
        #   @param page_size [Integer] The number of items on the page
        #
        #   @param previous_page_uri [String] Relative uri to the previous page of the query results
        #
        #   @param start [Integer] The number of the first element on the page, zero-indexed.
        #
        #   @param transcriptions [Array<Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription>]
        #
        #   @param uri [String] The URI of the current page.

        class Transcription < Telnyx::Internal::Type::BaseModel
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
          #   @return [Symbol, Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status, nil]
          optional :status,
                   enum: -> { Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status }

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
          #   {Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription}
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
          #   @param status [Symbol, Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status] The status of the recording transcriptions. The transcription text will be avail
          #
          #   @param transcription_text [String] The recording's transcribed text
          #
          #   @param uri [String] The relative URI for the recording transcription resource.

          # The status of the recording transcriptions. The transcription text will be
          # available only when the status is completed.
          #
          # @see Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription#status
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
