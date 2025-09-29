# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson#recordings_json
          class RecordingsJsonRecordingsJsonParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!attribute play_beep
            #   Whether to play a beep when recording is started.
            #
            #   @return [Boolean, nil]
            optional :play_beep, Telnyx::Internal::Type::Boolean, api_name: :PlayBeep

            # @!attribute recording_channels
            #   When `dual`, final audio file has the first leg on channel A, and the rest on
            #   channel B. `single` mixes both tracks into a single channel.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels, nil]
            optional :recording_channels,
                     enum: -> {
                       Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels
                     },
                     api_name: :RecordingChannels

            # @!attribute recording_status_callback
            #   Url where status callbacks will be sent.
            #
            #   @return [String, nil]
            optional :recording_status_callback, String, api_name: :RecordingStatusCallback

            # @!attribute recording_status_callback_event
            #   The changes to the recording's state that should generate a call to
            #   `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            #   Separate multiple values with a space. Defaults to `completed`.
            #
            #   @return [String, nil]
            optional :recording_status_callback_event, String, api_name: :RecordingStatusCallbackEvent

            # @!attribute recording_status_callback_method
            #   HTTP method used to send status callbacks.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod, nil]
            optional :recording_status_callback_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod
                     },
                     api_name: :RecordingStatusCallbackMethod

            # @!attribute recording_track
            #   The audio track to record for the call. The default is `both`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack, nil]
            optional :recording_track,
                     enum: -> {
                       Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack
                     },
                     api_name: :RecordingTrack

            # @!attribute send_recording_url
            #   Whether to send RecordingUrl in webhooks.
            #
            #   @return [Boolean, nil]
            optional :send_recording_url, Telnyx::Internal::Type::Boolean, api_name: :SendRecordingUrl

            # @!method initialize(account_sid:, play_beep: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_track: nil, send_recording_url: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams} for
            #   more details.
            #
            #   @param account_sid [String]
            #
            #   @param play_beep [Boolean] Whether to play a beep when recording is started.
            #
            #   @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels] When `dual`, final audio file has the first leg on channel A, and the rest on ch
            #
            #   @param recording_status_callback [String] Url where status callbacks will be sent.
            #
            #   @param recording_status_callback_event [String] The changes to the recording's state that should generate a call to `RecoridngSt
            #
            #   @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod] HTTP method used to send status callbacks.
            #
            #   @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack] The audio track to record for the call. The default is `both`.
            #
            #   @param send_recording_url [Boolean] Whether to send RecordingUrl in webhooks.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # When `dual`, final audio file has the first leg on channel A, and the rest on
            # channel B. `single` mixes both tracks into a single channel.
            module RecordingChannels
              extend Telnyx::Internal::Type::Enum

              SINGLE = :single
              DUAL = :dual

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # HTTP method used to send status callbacks.
            module RecordingStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The audio track to record for the call. The default is `both`.
            module RecordingTrack
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
