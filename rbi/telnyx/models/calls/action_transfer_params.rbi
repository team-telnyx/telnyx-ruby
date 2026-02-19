# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionTransferParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionTransferParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The DID or SIP URI to dial out to.
        sig { returns(String) }
        attr_accessor :to

        # Enables Answering Machine Detection. When a call is answered, Telnyx runs
        # real-time detection to determine if it was picked up by a human or a machine and
        # sends an `call.machine.detection.ended` webhook with the analysis result. If
        # 'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
        # receive another 'call.machine.greeting.ended' webhook when the answering machine
        # greeting ends with a beep or silence. If `detect_beep` is used, you will only
        # receive 'call.machine.greeting.ended' if a beep is detected.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::OrSymbol
            )
          )
        end
        attr_reader :answering_machine_detection

        sig do
          params(
            answering_machine_detection:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::OrSymbol
          ).void
        end
        attr_writer :answering_machine_detection

        # Optional configuration parameters to modify 'answering_machine_detection'
        # performance.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig
            )
          )
        end
        attr_reader :answering_machine_detection_config

        sig do
          params(
            answering_machine_detection_config:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig::OrHash
          ).void
        end
        attr_writer :answering_machine_detection_config

        # The URL of a file to be played back when the transfer destination answers before
        # bridging the call. The URL can point to either a WAV or MP3 file. media_name and
        # audio_url cannot be used together in one request.
        sig { returns(T.nilable(String)) }
        attr_reader :audio_url

        sig { params(audio_url: String).void }
        attr_writer :audio_url

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Custom headers to be added to the SIP INVITE.
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # If set to false, early media will not be passed to the originating leg.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :early_media

        sig { params(early_media: T::Boolean).void }
        attr_writer :early_media

        # The `from` number to be used as the caller id presented to the destination (`to`
        # number). The number should be in +E164 format. This attribute will default to
        # the `to` number of the original call if omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The `from_display_name` string to be used as the caller id name (SIP From
        # Display Name) presented to the destination (`to` number). The string should have
        # a maximum of 128 characters, containing only letters, numbers, spaces, and
        # -\_~!.+ special characters. If ommited, the display name will be the same as the
        # number in the `from` field.
        sig { returns(T.nilable(String)) }
        attr_reader :from_display_name

        sig { params(from_display_name: String).void }
        attr_writer :from_display_name

        # Defines whether media should be encrypted on the new call leg.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::MediaEncryption::OrSymbol
            )
          )
        end
        attr_reader :media_encryption

        sig do
          params(
            media_encryption:
              Telnyx::Calls::ActionTransferParams::MediaEncryption::OrSymbol
          ).void
        end
        attr_writer :media_encryption

        # The media_name of a file to be played back when the transfer destination answers
        # before bridging the call. The media_name must point to a file previously
        # uploaded to api.telnyx.com/v2/media by the same user/organization. The file must
        # either be a WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # When enabled, DTMF tones are not passed to the call participant. The webhooks
        # containing the DTMF information will be sent.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionTransferParams::MuteDtmf::OrSymbol)
          )
        end
        attr_reader :mute_dtmf

        sig do
          params(
            mute_dtmf: Telnyx::Calls::ActionTransferParams::MuteDtmf::OrSymbol
          ).void
        end
        attr_writer :mute_dtmf

        # Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        # or is transferred). If supplied with the value `self`, the current leg will be
        # parked after unbridge. If not set, the default behavior is to hang up the leg.
        sig { returns(T.nilable(String)) }
        attr_reader :park_after_unbridge

        sig { params(park_after_unbridge: String).void }
        attr_writer :park_after_unbridge

        # The list of comma-separated codecs in order of preference to be used during the
        # call. The codecs supported are `G722`, `PCMU`, `PCMA`, `G729`, `OPUS`, `VP8`,
        # `H264`, `AMR-WB`.
        sig { returns(T.nilable(String)) }
        attr_reader :preferred_codecs

        sig { params(preferred_codecs: String).void }
        attr_writer :preferred_codecs

        # Start recording automatically after an event. Disabled by default.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionTransferParams::Record::OrSymbol)
          )
        end
        attr_reader :record

        sig do
          params(
            record: Telnyx::Calls::ActionTransferParams::Record::OrSymbol
          ).void
        end
        attr_writer :record

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::RecordChannels::OrSymbol
            )
          )
        end
        attr_reader :record_channels

        sig do
          params(
            record_channels:
              Telnyx::Calls::ActionTransferParams::RecordChannels::OrSymbol
          ).void
        end
        attr_writer :record_channels

        # The custom recording file name to be used instead of the default `call_leg_id`.
        # Telnyx will still add a Unix timestamp suffix.
        sig { returns(T.nilable(String)) }
        attr_reader :record_custom_file_name

        sig { params(record_custom_file_name: String).void }
        attr_writer :record_custom_file_name

        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::RecordFormat::OrSymbol
            )
          )
        end
        attr_reader :record_format

        sig do
          params(
            record_format:
              Telnyx::Calls::ActionTransferParams::RecordFormat::OrSymbol
          ).void
        end
        attr_writer :record_format

        # Defines the maximum length for the recording in seconds when `record` is
        # specified. The minimum value is 0. The maximum value is 43200. The default value
        # is 0 (infinite).
        sig { returns(T.nilable(Integer)) }
        attr_reader :record_max_length

        sig { params(record_max_length: Integer).void }
        attr_writer :record_max_length

        # The number of seconds that Telnyx will wait for the recording to be stopped if
        # silence is detected when `record` is specified. The timer only starts when the
        # speech is detected. Please note that call transcription is used to detect
        # silence and the related charge will be applied. The minimum value is 0. The
        # default value is 0 (infinite).
        sig { returns(T.nilable(Integer)) }
        attr_reader :record_timeout_secs

        sig { params(record_timeout_secs: Integer).void }
        attr_writer :record_timeout_secs

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::RecordTrack::OrSymbol
            )
          )
        end
        attr_reader :record_track

        sig do
          params(
            record_track:
              Telnyx::Calls::ActionTransferParams::RecordTrack::OrSymbol
          ).void
        end
        attr_writer :record_track

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionTransferParams::RecordTrim::OrSymbol)
          )
        end
        attr_reader :record_trim

        sig do
          params(
            record_trim:
              Telnyx::Calls::ActionTransferParams::RecordTrim::OrSymbol
          ).void
        end
        attr_writer :record_trim

        # SIP Authentication password used for SIP challenges.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_password

        sig { params(sip_auth_password: String).void }
        attr_writer :sip_auth_password

        # SIP Authentication username used for SIP challenges.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_username

        sig { params(sip_auth_username: String).void }
        attr_writer :sip_auth_username

        # SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
        # supported.
        sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
        attr_reader :sip_headers

        sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
        attr_writer :sip_headers

        # Defines the SIP region to be used for the call.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionTransferParams::SipRegion::OrSymbol)
          )
        end
        attr_reader :sip_region

        sig do
          params(
            sip_region: Telnyx::Calls::ActionTransferParams::SipRegion::OrSymbol
          ).void
        end
        attr_writer :sip_region

        # Defines SIP transport protocol to be used on the call.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::OrSymbol
            )
          )
        end
        attr_reader :sip_transport_protocol

        sig do
          params(
            sip_transport_protocol:
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::OrSymbol
          ).void
        end
        attr_writer :sip_transport_protocol

        # Use this field to modify sound effects, for example adjust the pitch.
        sig { returns(T.nilable(Telnyx::SoundModifications)) }
        attr_reader :sound_modifications

        sig do
          params(sound_modifications: Telnyx::SoundModifications::OrHash).void
        end
        attr_writer :sound_modifications

        # Use this field to add state to every subsequent webhook for the new leg. It must
        # be a valid Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :target_leg_client_state

        sig { params(target_leg_client_state: String).void }
        attr_writer :target_leg_client_state

        # Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
        # reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
        # of `time_limit` will be sent. For example, by setting a time limit of 120
        # seconds, a Call Leg will be automatically terminated two minutes after being
        # answered. The default time limit is 14400 seconds or 4 hours and this is also
        # the maximum allowed call length.
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_limit_secs

        sig { params(time_limit_secs: Integer).void }
        attr_writer :time_limit_secs

        # The number of seconds that Telnyx will wait for the call to be answered by the
        # destination to which it is being transferred. If the timeout is reached before
        # an answer is received, the call will hangup and a `call.hangup` webhook with a
        # `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
        # value is 600 seconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_secs

        sig { params(timeout_secs: Integer).void }
        attr_writer :timeout_secs

        # A map of event types to retry policies. Each retry policy contains an array of
        # `retries_ms` specifying the delays between retry attempts in milliseconds.
        # Maximum 5 retries, total delay cannot exceed 60 seconds.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy
              ]
            )
          )
        end
        attr_reader :webhook_retries_policies

        sig do
          params(
            webhook_retries_policies:
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy::OrHash
              ]
          ).void
        end
        attr_writer :webhook_retries_policies

        # Use this field to override the URL for which Telnyx will send subsequent
        # webhooks to for this call.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        # HTTP request type used for `webhook_url`.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::OrSymbol
            )
          )
        end
        attr_reader :webhook_url_method

        sig do
          params(
            webhook_url_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::OrSymbol
          ).void
        end
        attr_writer :webhook_url_method

        # A map of event types to webhook URLs. When an event of the specified type
        # occurs, the webhook URL associated with that event type will be called instead
        # of `webhook_url`. Events not mapped here will use the default `webhook_url`.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :webhook_urls

        sig { params(webhook_urls: T::Hash[Symbol, String]).void }
        attr_writer :webhook_urls

        # HTTP request method to invoke `webhook_urls`.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::OrSymbol
            )
          )
        end
        attr_reader :webhook_urls_method

        sig do
          params(
            webhook_urls_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::OrSymbol
          ).void
        end
        attr_writer :webhook_urls_method

        sig do
          params(
            to: String,
            answering_machine_detection:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::OrSymbol,
            answering_machine_detection_config:
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig::OrHash,
            audio_url: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            early_media: T::Boolean,
            from: String,
            from_display_name: String,
            media_encryption:
              Telnyx::Calls::ActionTransferParams::MediaEncryption::OrSymbol,
            media_name: String,
            mute_dtmf: Telnyx::Calls::ActionTransferParams::MuteDtmf::OrSymbol,
            park_after_unbridge: String,
            preferred_codecs: String,
            record: Telnyx::Calls::ActionTransferParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionTransferParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionTransferParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionTransferParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionTransferParams::RecordTrim::OrSymbol,
            sip_auth_password: String,
            sip_auth_username: String,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            sip_region:
              Telnyx::Calls::ActionTransferParams::SipRegion::OrSymbol,
            sip_transport_protocol:
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::OrSymbol,
            sound_modifications: Telnyx::SoundModifications::OrHash,
            target_leg_client_state: String,
            time_limit_secs: Integer,
            timeout_secs: Integer,
            webhook_retries_policies:
              T::Hash[
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy::OrHash
              ],
            webhook_url: String,
            webhook_url_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::OrSymbol,
            webhook_urls: T::Hash[Symbol, String],
            webhook_urls_method:
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The DID or SIP URI to dial out to.
          to:,
          # Enables Answering Machine Detection. When a call is answered, Telnyx runs
          # real-time detection to determine if it was picked up by a human or a machine and
          # sends an `call.machine.detection.ended` webhook with the analysis result. If
          # 'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
          # receive another 'call.machine.greeting.ended' webhook when the answering machine
          # greeting ends with a beep or silence. If `detect_beep` is used, you will only
          # receive 'call.machine.greeting.ended' if a beep is detected.
          answering_machine_detection: nil,
          # Optional configuration parameters to modify 'answering_machine_detection'
          # performance.
          answering_machine_detection_config: nil,
          # The URL of a file to be played back when the transfer destination answers before
          # bridging the call. The URL can point to either a WAV or MP3 file. media_name and
          # audio_url cannot be used together in one request.
          audio_url: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE.
          custom_headers: nil,
          # If set to false, early media will not be passed to the originating leg.
          early_media: nil,
          # The `from` number to be used as the caller id presented to the destination (`to`
          # number). The number should be in +E164 format. This attribute will default to
          # the `to` number of the original call if omitted.
          from: nil,
          # The `from_display_name` string to be used as the caller id name (SIP From
          # Display Name) presented to the destination (`to` number). The string should have
          # a maximum of 128 characters, containing only letters, numbers, spaces, and
          # -\_~!.+ special characters. If ommited, the display name will be the same as the
          # number in the `from` field.
          from_display_name: nil,
          # Defines whether media should be encrypted on the new call leg.
          media_encryption: nil,
          # The media_name of a file to be played back when the transfer destination answers
          # before bridging the call. The media_name must point to a file previously
          # uploaded to api.telnyx.com/v2/media by the same user/organization. The file must
          # either be a WAV or MP3 file.
          media_name: nil,
          # When enabled, DTMF tones are not passed to the call participant. The webhooks
          # containing the DTMF information will be sent.
          mute_dtmf: nil,
          # Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
          # or is transferred). If supplied with the value `self`, the current leg will be
          # parked after unbridge. If not set, the default behavior is to hang up the leg.
          park_after_unbridge: nil,
          # The list of comma-separated codecs in order of preference to be used during the
          # call. The codecs supported are `G722`, `PCMU`, `PCMA`, `G729`, `OPUS`, `VP8`,
          # `H264`, `AMR-WB`.
          preferred_codecs: nil,
          # Start recording automatically after an event. Disabled by default.
          record: nil,
          # Defines which channel should be recorded ('single' or 'dual') when `record` is
          # specified.
          record_channels: nil,
          # The custom recording file name to be used instead of the default `call_leg_id`.
          # Telnyx will still add a Unix timestamp suffix.
          record_custom_file_name: nil,
          # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
          record_format: nil,
          # Defines the maximum length for the recording in seconds when `record` is
          # specified. The minimum value is 0. The maximum value is 43200. The default value
          # is 0 (infinite).
          record_max_length: nil,
          # The number of seconds that Telnyx will wait for the recording to be stopped if
          # silence is detected when `record` is specified. The timer only starts when the
          # speech is detected. Please note that call transcription is used to detect
          # silence and the related charge will be applied. The minimum value is 0. The
          # default value is 0 (infinite).
          record_timeout_secs: nil,
          # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
          # If only single track is specified (`inbound`, `outbound`), `channels`
          # configuration is ignored and it will be recorded as mono (single channel).
          record_track: nil,
          # When set to `trim-silence`, silence will be removed from the beginning and end
          # of the recording.
          record_trim: nil,
          # SIP Authentication password used for SIP challenges.
          sip_auth_password: nil,
          # SIP Authentication username used for SIP challenges.
          sip_auth_username: nil,
          # SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
          # supported.
          sip_headers: nil,
          # Defines the SIP region to be used for the call.
          sip_region: nil,
          # Defines SIP transport protocol to be used on the call.
          sip_transport_protocol: nil,
          # Use this field to modify sound effects, for example adjust the pitch.
          sound_modifications: nil,
          # Use this field to add state to every subsequent webhook for the new leg. It must
          # be a valid Base-64 encoded string.
          target_leg_client_state: nil,
          # Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
          # reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
          # of `time_limit` will be sent. For example, by setting a time limit of 120
          # seconds, a Call Leg will be automatically terminated two minutes after being
          # answered. The default time limit is 14400 seconds or 4 hours and this is also
          # the maximum allowed call length.
          time_limit_secs: nil,
          # The number of seconds that Telnyx will wait for the call to be answered by the
          # destination to which it is being transferred. If the timeout is reached before
          # an answer is received, the call will hangup and a `call.hangup` webhook with a
          # `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
          # value is 600 seconds.
          timeout_secs: nil,
          # A map of event types to retry policies. Each retry policy contains an array of
          # `retries_ms` specifying the delays between retry attempts in milliseconds.
          # Maximum 5 retries, total delay cannot exceed 60 seconds.
          webhook_retries_policies: nil,
          # Use this field to override the URL for which Telnyx will send subsequent
          # webhooks to for this call.
          webhook_url: nil,
          # HTTP request type used for `webhook_url`.
          webhook_url_method: nil,
          # A map of event types to webhook URLs. When an event of the specified type
          # occurs, the webhook URL associated with that event type will be called instead
          # of `webhook_url`. Events not mapped here will use the default `webhook_url`.
          webhook_urls: nil,
          # HTTP request method to invoke `webhook_urls`.
          webhook_urls_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              to: String,
              answering_machine_detection:
                Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::OrSymbol,
              answering_machine_detection_config:
                Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig,
              audio_url: String,
              client_state: String,
              command_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
              early_media: T::Boolean,
              from: String,
              from_display_name: String,
              media_encryption:
                Telnyx::Calls::ActionTransferParams::MediaEncryption::OrSymbol,
              media_name: String,
              mute_dtmf:
                Telnyx::Calls::ActionTransferParams::MuteDtmf::OrSymbol,
              park_after_unbridge: String,
              preferred_codecs: String,
              record: Telnyx::Calls::ActionTransferParams::Record::OrSymbol,
              record_channels:
                Telnyx::Calls::ActionTransferParams::RecordChannels::OrSymbol,
              record_custom_file_name: String,
              record_format:
                Telnyx::Calls::ActionTransferParams::RecordFormat::OrSymbol,
              record_max_length: Integer,
              record_timeout_secs: Integer,
              record_track:
                Telnyx::Calls::ActionTransferParams::RecordTrack::OrSymbol,
              record_trim:
                Telnyx::Calls::ActionTransferParams::RecordTrim::OrSymbol,
              sip_auth_password: String,
              sip_auth_username: String,
              sip_headers: T::Array[Telnyx::SipHeader],
              sip_region:
                Telnyx::Calls::ActionTransferParams::SipRegion::OrSymbol,
              sip_transport_protocol:
                Telnyx::Calls::ActionTransferParams::SipTransportProtocol::OrSymbol,
              sound_modifications: Telnyx::SoundModifications,
              target_leg_client_state: String,
              time_limit_secs: Integer,
              timeout_secs: Integer,
              webhook_retries_policies:
                T::Hash[
                  Symbol,
                  Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy
                ],
              webhook_url: String,
              webhook_url_method:
                Telnyx::Calls::ActionTransferParams::WebhookURLMethod::OrSymbol,
              webhook_urls: T::Hash[Symbol, String],
              webhook_urls_method:
                Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Enables Answering Machine Detection. When a call is answered, Telnyx runs
        # real-time detection to determine if it was picked up by a human or a machine and
        # sends an `call.machine.detection.ended` webhook with the analysis result. If
        # 'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
        # receive another 'call.machine.greeting.ended' webhook when the answering machine
        # greeting ends with a beep or silence. If `detect_beep` is used, you will only
        # receive 'call.machine.greeting.ended' if a beep is detected.
        module AnsweringMachineDetection
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREMIUM =
            T.let(
              :premium,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )
          DETECT =
            T.let(
              :detect,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )
          DETECT_BEEP =
            T.let(
              :detect_beep,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )
          DETECT_WORDS =
            T.let(
              :detect_words,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )
          GREETING_END =
            T.let(
              :greeting_end,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class AnsweringMachineDetectionConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig,
                Telnyx::Internal::AnyHash
              )
            end

          # Silence duration threshold after a greeting message or voice for it be
          # considered human.
          sig { returns(T.nilable(Integer)) }
          attr_reader :after_greeting_silence_millis

          sig { params(after_greeting_silence_millis: Integer).void }
          attr_writer :after_greeting_silence_millis

          # Maximum threshold for silence between words.
          sig { returns(T.nilable(Integer)) }
          attr_reader :between_words_silence_millis

          sig { params(between_words_silence_millis: Integer).void }
          attr_writer :between_words_silence_millis

          # Maximum threshold of a human greeting. If greeting longer than this value,
          # considered machine.
          sig { returns(T.nilable(Integer)) }
          attr_reader :greeting_duration_millis

          sig { params(greeting_duration_millis: Integer).void }
          attr_writer :greeting_duration_millis

          # If machine already detected, maximum threshold for silence between words. If
          # exceeded, the greeting is considered ended.
          sig { returns(T.nilable(Integer)) }
          attr_reader :greeting_silence_duration_millis

          sig { params(greeting_silence_duration_millis: Integer).void }
          attr_writer :greeting_silence_duration_millis

          # If machine already detected, maximum timeout threshold to determine the end of
          # the machine greeting.
          sig { returns(T.nilable(Integer)) }
          attr_reader :greeting_total_analysis_time_millis

          sig { params(greeting_total_analysis_time_millis: Integer).void }
          attr_writer :greeting_total_analysis_time_millis

          # If initial silence duration is greater than this value, consider it a machine.
          sig { returns(T.nilable(Integer)) }
          attr_reader :initial_silence_millis

          sig { params(initial_silence_millis: Integer).void }
          attr_writer :initial_silence_millis

          # If number of detected words is greater than this value, consder it a machine.
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_number_of_words

          sig { params(maximum_number_of_words: Integer).void }
          attr_writer :maximum_number_of_words

          # If a single word lasts longer than this threshold, consider it a machine.
          sig { returns(T.nilable(Integer)) }
          attr_reader :maximum_word_length_millis

          sig { params(maximum_word_length_millis: Integer).void }
          attr_writer :maximum_word_length_millis

          # Minimum noise threshold for any analysis.
          sig { returns(T.nilable(Integer)) }
          attr_reader :silence_threshold

          sig { params(silence_threshold: Integer).void }
          attr_writer :silence_threshold

          # Maximum timeout threshold for overall detection.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_analysis_time_millis

          sig { params(total_analysis_time_millis: Integer).void }
          attr_writer :total_analysis_time_millis

          # Optional configuration parameters to modify 'answering_machine_detection'
          # performance.
          sig do
            params(
              after_greeting_silence_millis: Integer,
              between_words_silence_millis: Integer,
              greeting_duration_millis: Integer,
              greeting_silence_duration_millis: Integer,
              greeting_total_analysis_time_millis: Integer,
              initial_silence_millis: Integer,
              maximum_number_of_words: Integer,
              maximum_word_length_millis: Integer,
              silence_threshold: Integer,
              total_analysis_time_millis: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Silence duration threshold after a greeting message or voice for it be
            # considered human.
            after_greeting_silence_millis: nil,
            # Maximum threshold for silence between words.
            between_words_silence_millis: nil,
            # Maximum threshold of a human greeting. If greeting longer than this value,
            # considered machine.
            greeting_duration_millis: nil,
            # If machine already detected, maximum threshold for silence between words. If
            # exceeded, the greeting is considered ended.
            greeting_silence_duration_millis: nil,
            # If machine already detected, maximum timeout threshold to determine the end of
            # the machine greeting.
            greeting_total_analysis_time_millis: nil,
            # If initial silence duration is greater than this value, consider it a machine.
            initial_silence_millis: nil,
            # If number of detected words is greater than this value, consder it a machine.
            maximum_number_of_words: nil,
            # If a single word lasts longer than this threshold, consider it a machine.
            maximum_word_length_millis: nil,
            # Minimum noise threshold for any analysis.
            silence_threshold: nil,
            # Maximum timeout threshold for overall detection.
            total_analysis_time_millis: nil
          )
          end

          sig do
            override.returns(
              {
                after_greeting_silence_millis: Integer,
                between_words_silence_millis: Integer,
                greeting_duration_millis: Integer,
                greeting_silence_duration_millis: Integer,
                greeting_total_analysis_time_millis: Integer,
                initial_silence_millis: Integer,
                maximum_number_of_words: Integer,
                maximum_word_length_millis: Integer,
                silence_threshold: Integer,
                total_analysis_time_millis: Integer
              }
            )
          end
          def to_hash
          end
        end

        # Defines whether media should be encrypted on the new call leg.
        module MediaEncryption
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionTransferParams::MediaEncryption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::Calls::ActionTransferParams::MediaEncryption::TaggedSymbol
            )
          SRTP =
            T.let(
              :SRTP,
              Telnyx::Calls::ActionTransferParams::MediaEncryption::TaggedSymbol
            )
          DTLS =
            T.let(
              :DTLS,
              Telnyx::Calls::ActionTransferParams::MediaEncryption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::MediaEncryption::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When enabled, DTMF tones are not passed to the call participant. The webhooks
        # containing the DTMF information will be sent.
        module MuteDtmf
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::MuteDtmf)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::Calls::ActionTransferParams::MuteDtmf::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionTransferParams::MuteDtmf::TaggedSymbol
            )
          SELF =
            T.let(
              :self,
              Telnyx::Calls::ActionTransferParams::MuteDtmf::TaggedSymbol
            )
          OPPOSITE =
            T.let(
              :opposite,
              Telnyx::Calls::ActionTransferParams::MuteDtmf::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::MuteDtmf::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Start recording automatically after an event. Disabled by default.
        module Record
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::Record)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECORD_FROM_ANSWER =
            T.let(
              :"record-from-answer",
              Telnyx::Calls::ActionTransferParams::Record::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::Record::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        module RecordChannels
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::RecordChannels)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::Calls::ActionTransferParams::RecordChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Calls::ActionTransferParams::RecordChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::RecordChannels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        module RecordFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::RecordFormat)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionTransferParams::RecordFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionTransferParams::RecordFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::RecordFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        module RecordTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::RecordTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionTransferParams::RecordTrack::TaggedSymbol
            )
          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionTransferParams::RecordTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionTransferParams::RecordTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::RecordTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module RecordTrim
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::RecordTrim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Calls::ActionTransferParams::RecordTrim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::RecordTrim::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines the SIP region to be used for the call.
        module SipRegion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionTransferParams::SipRegion)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          US =
            T.let(
              :US,
              Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
            )
          CANADA =
            T.let(
              :Canada,
              Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
            )
          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::SipRegion::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Defines SIP transport protocol to be used on the call.
        module SipTransportProtocol
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionTransferParams::SipTransportProtocol
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UDP =
            T.let(
              :UDP,
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::TaggedSymbol
            )
          TCP =
            T.let(
              :TCP,
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::TaggedSymbol
            )
          TLS =
            T.let(
              :TLS,
              Telnyx::Calls::ActionTransferParams::SipTransportProtocol::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::SipTransportProtocol::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class WebhookRetriesPolicy < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionTransferParams::WebhookRetriesPolicy,
                Telnyx::Internal::AnyHash
              )
            end

          # Array of delays in milliseconds between retry attempts. Total sum cannot exceed
          # 60000ms.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :retries_ms

          sig { params(retries_ms: T::Array[Integer]).void }
          attr_writer :retries_ms

          sig do
            params(retries_ms: T::Array[Integer]).returns(T.attached_class)
          end
          def self.new(
            # Array of delays in milliseconds between retry attempts. Total sum cannot exceed
            # 60000ms.
            retries_ms: nil
          )
          end

          sig { override.returns({ retries_ms: T::Array[Integer] }) }
          def to_hash
          end
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookURLMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              Telnyx::Calls::ActionTransferParams::WebhookURLMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::WebhookURLMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # HTTP request method to invoke `webhook_urls`.
        module WebhookURLsMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionTransferParams::WebhookURLsMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionTransferParams::WebhookURLsMethod::TaggedSymbol
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
