# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::Recordings#recording_sid_json
          class RecordingRecordingSidJsonResponse < Telnyx::Internal::Type::BaseModel
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
            #   @return [Integer, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Channels, nil]
            optional :channels,
                     enum: -> { Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Channels }

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

            # @!attribute price
            #   The price of this recording, the currency is specified in the price_unit field.
            #
            #   @return [String, nil]
            optional :price, String, nil?: true

            # @!attribute price_unit
            #   The unit in which the price is given.
            #
            #   @return [String, nil]
            optional :price_unit, String, nil?: true

            # @!attribute sid
            #   Identifier of a resource.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute source
            #   Defines how the recording was created.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Source, nil]
            optional :source,
                     enum: -> { Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Source }

            # @!attribute start_time
            #
            #   @return [Time, nil]
            optional :start_time, Time

            # @!attribute track
            #   The audio track to record for the call. The default is `both`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Track, nil]
            optional :track,
                     enum: -> { Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Track }

            # @!attribute uri
            #   The relative URI for this recording resource.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, call_sid: nil, channels: nil, conference_sid: nil, date_created: nil, date_updated: nil, duration: nil, error_code: nil, price: nil, price_unit: nil, sid: nil, source: nil, start_time: nil, track: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse} for
            #   more details.
            #
            #   @param account_sid [String]
            #
            #   @param call_sid [String]
            #
            #   @param channels [Integer, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Channels]
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
            #   @param price [String, nil] The price of this recording, the currency is specified in the price_unit field.
            #
            #   @param price_unit [String, nil] The unit in which the price is given.
            #
            #   @param sid [String] Identifier of a resource.
            #
            #   @param source [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Source] Defines how the recording was created.
            #
            #   @param start_time [Time]
            #
            #   @param track [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse::Track] The audio track to record for the call. The default is `both`.
            #
            #   @param uri [String] The relative URI for this recording resource.

            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse#channels
            module Channels
              extend Telnyx::Internal::Type::Enum

              CHANNEL_1 = 1
              CHANNEL_2 = 2

              # @!method self.values
              #   @return [Array<Integer>]
            end

            # Defines how the recording was created.
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse#source
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

            # The audio track to record for the call. The default is `both`.
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse#track
            module Track
              extend Telnyx::Internal::Type::Enum

              INBOUND = :inbound
              OUTBOUND = :outbound
              BOTH = :both

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
