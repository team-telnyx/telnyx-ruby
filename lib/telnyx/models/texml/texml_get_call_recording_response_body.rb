# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      class TexmlGetCallRecordingResponseBody < Telnyx::Internal::Type::BaseModel
        # @!attribute account_sid
        #
        #   @return [String, nil]
        optional :account_sid, String

        # @!attribute call_sid
        #
        #   @return [String, nil]
        optional :call_sid, String

        # @!attribute channels
        #
        #   @return [Integer, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Channels, nil]
        optional :channels, enum: -> { Telnyx::Texml::TexmlGetCallRecordingResponseBody::Channels }

        # @!attribute conference_sid
        #
        #   @return [String, nil]
        optional :conference_sid, String, nil?: true

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

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String, nil?: true

        # @!attribute media_url
        #
        #   @return [String, nil]
        optional :media_url, String

        # @!attribute sid
        #   Identifier of a resource.
        #
        #   @return [String, nil]
        optional :sid, String

        # @!attribute source
        #   Defines how the recording was created.
        #
        #   @return [Symbol, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Source, nil]
        optional :source, enum: -> { Telnyx::Texml::TexmlGetCallRecordingResponseBody::Source }

        # @!attribute start_time
        #
        #   @return [Time, nil]
        optional :start_time, Time

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Status, nil]
        optional :status, enum: -> { Telnyx::Texml::TexmlGetCallRecordingResponseBody::Status }

        # @!attribute subresources_uris
        #   Subresources details for a recording if available.
        #
        #   @return [Telnyx::Models::Texml::TexmlRecordingSubresourcesUris, nil]
        optional :subresources_uris, -> { Telnyx::Texml::TexmlRecordingSubresourcesUris }

        # @!attribute uri
        #   The relative URI for this recording resource.
        #
        #   @return [String, nil]
        optional :uri, String

        # @!method initialize(account_sid: nil, call_sid: nil, channels: nil, conference_sid: nil, date_created: nil, date_updated: nil, duration: nil, error_code: nil, media_url: nil, sid: nil, source: nil, start_time: nil, status: nil, subresources_uris: nil, uri: nil)
        #   @param account_sid [String]
        #
        #   @param call_sid [String]
        #
        #   @param channels [Integer, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Channels]
        #
        #   @param conference_sid [String, nil]
        #
        #   @param date_created [Time]
        #
        #   @param date_updated [Time]
        #
        #   @param duration [String, nil] The duration of this recording, given in seconds.
        #
        #   @param error_code [String, nil]
        #
        #   @param media_url [String]
        #
        #   @param sid [String] Identifier of a resource.
        #
        #   @param source [Symbol, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Source] Defines how the recording was created.
        #
        #   @param start_time [Time]
        #
        #   @param status [Symbol, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Status]
        #
        #   @param subresources_uris [Telnyx::Models::Texml::TexmlRecordingSubresourcesUris] Subresources details for a recording if available.
        #
        #   @param uri [String] The relative URI for this recording resource.

        # @see Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody#channels
        module Channels
          extend Telnyx::Internal::Type::Enum

          CHANNELS_1 = 1
          CHANNELS_2 = 2

          # @!method self.values
          #   @return [Array<Integer>]
        end

        # Defines how the recording was created.
        #
        # @see Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody#source
        module Source
          extend Telnyx::Internal::Type::Enum

          START_CALL_RECORDING_API = :StartCallRecordingAPI
          START_CONFERENCE_RECORDING_API = :StartConferenceRecordingAPI
          OUTBOUND_API = :OutboundAPI
          DIAL_VERB = :DialVerb
          CONFERENCE = :Conference
          RECORD_VERB = :RecordVerb
          TRUNKING = :Trunking

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody#status
        module Status
          extend Telnyx::Internal::Type::Enum

          IN_PROGRESS = :"in-progress"
          COMPLETED = :completed
          PAUSED = :paused
          STOPPED = :stopped

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    TexmlGetCallRecordingResponseBody = Texml::TexmlGetCallRecordingResponseBody
  end
end
