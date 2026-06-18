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
        #   @return [Integer, Telnyx::Models::Texml::Accounts::Calls::TwimlRecordingChannels, nil]
        optional :channels, enum: -> { Telnyx::Texml::Accounts::Calls::TwimlRecordingChannels }

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
        #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingSource, nil]
        optional :source, enum: -> { Telnyx::Texml::Accounts::Calls::RecordingSource }

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
        #   @param channels [Integer, Telnyx::Models::Texml::Accounts::Calls::TwimlRecordingChannels]
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
        #   @param source [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingSource] Defines how the recording was created.
        #
        #   @param start_time [Time]
        #
        #   @param status [Symbol, Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody::Status]
        #
        #   @param subresources_uris [Telnyx::Models::Texml::TexmlRecordingSubresourcesUris] Subresources details for a recording if available.
        #
        #   @param uri [String] The relative URI for this recording resource.

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
