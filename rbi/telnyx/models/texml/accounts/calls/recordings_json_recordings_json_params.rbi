# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          class RecordingsJsonRecordingsJsonParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_sid

            # Whether to play a beep when recording is started.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :play_beep

            sig { params(play_beep: T::Boolean).void }
            attr_writer :play_beep

            # When `dual`, final audio file has the first leg on channel A, and the rest on
            # channel B. `single` mixes both tracks into a single channel.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::OrSymbol
                )
              )
            end
            attr_reader :recording_channels

            sig do
              params(
                recording_channels:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::OrSymbol
              ).void
            end
            attr_writer :recording_channels

            # Url where status callbacks will be sent.
            sig { returns(T.nilable(String)) }
            attr_reader :recording_status_callback

            sig { params(recording_status_callback: String).void }
            attr_writer :recording_status_callback

            # The changes to the recording's state that should generate a call to
            # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
            # Separate multiple values with a space. Defaults to `completed`.
            sig { returns(T.nilable(String)) }
            attr_reader :recording_status_callback_event

            sig { params(recording_status_callback_event: String).void }
            attr_writer :recording_status_callback_event

            # HTTP method used to send status callbacks.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::OrSymbol
                )
              )
            end
            attr_reader :recording_status_callback_method

            sig do
              params(
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::OrSymbol
              ).void
            end
            attr_writer :recording_status_callback_method

            # The audio track to record for the call. The default is `both`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::OrSymbol
                )
              )
            end
            attr_reader :recording_track

            sig do
              params(
                recording_track:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::OrSymbol
              ).void
            end
            attr_writer :recording_track

            # Whether to send RecordingUrl in webhooks.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :send_recording_url

            sig { params(send_recording_url: T::Boolean).void }
            attr_writer :send_recording_url

            sig do
              params(
                account_sid: String,
                play_beep: T::Boolean,
                recording_channels:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::OrSymbol,
                recording_status_callback: String,
                recording_status_callback_event: String,
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::OrSymbol,
                recording_track:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::OrSymbol,
                send_recording_url: T::Boolean,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account_sid:,
              # Whether to play a beep when recording is started.
              play_beep: nil,
              # When `dual`, final audio file has the first leg on channel A, and the rest on
              # channel B. `single` mixes both tracks into a single channel.
              recording_channels: nil,
              # Url where status callbacks will be sent.
              recording_status_callback: nil,
              # The changes to the recording's state that should generate a call to
              # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              # Separate multiple values with a space. Defaults to `completed`.
              recording_status_callback_event: nil,
              # HTTP method used to send status callbacks.
              recording_status_callback_method: nil,
              # The audio track to record for the call. The default is `both`.
              recording_track: nil,
              # Whether to send RecordingUrl in webhooks.
              send_recording_url: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  play_beep: T::Boolean,
                  recording_channels:
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::OrSymbol,
                  recording_status_callback: String,
                  recording_status_callback_event: String,
                  recording_status_callback_method:
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::OrSymbol,
                  recording_track:
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::OrSymbol,
                  send_recording_url: T::Boolean,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            # When `dual`, final audio file has the first leg on channel A, and the rest on
            # channel B. `single` mixes both tracks into a single channel.
            module RecordingChannels
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SINGLE =
                T.let(
                  :single,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::TaggedSymbol
                )
              DUAL =
                T.let(
                  :dual,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # HTTP method used to send status callbacks.
            module RecordingStatusCallbackMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The audio track to record for the call. The default is `both`.
            module RecordingTrack
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :inbound,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :outbound,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::TaggedSymbol
                )
              BOTH =
                T.let(
                  :both,
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
