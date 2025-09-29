# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#transfer
      class ActionTransferParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute to
        #   The DID or SIP URI to dial out to.
        #
        #   @return [String]
        required :to, String

        # @!attribute answering_machine_detection
        #   Enables Answering Machine Detection. When a call is answered, Telnyx runs
        #   real-time detection to determine if it was picked up by a human or a machine and
        #   sends an `call.machine.detection.ended` webhook with the analysis result. If
        #   'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
        #   receive another 'call.machine.greeting.ended' webhook when the answering machine
        #   greeting ends with a beep or silence. If `detect_beep` is used, you will only
        #   receive 'call.machine.greeting.ended' if a beep is detected.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetection, nil]
        optional :answering_machine_detection,
                 enum: -> { Telnyx::Calls::ActionTransferParams::AnsweringMachineDetection }

        # @!attribute answering_machine_detection_config
        #   Optional configuration parameters to modify 'answering_machine_detection'
        #   performance.
        #
        #   @return [Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetectionConfig, nil]
        optional :answering_machine_detection_config,
                 -> { Telnyx::Calls::ActionTransferParams::AnsweringMachineDetectionConfig }

        # @!attribute audio_url
        #   The URL of a file to be played back when the transfer destination answers before
        #   bridging the call. The URL can point to either a WAV or MP3 file. media_name and
        #   audio_url cannot be used together in one request.
        #
        #   @return [String, nil]
        optional :audio_url, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE.
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute early_media
        #   If set to false, early media will not be passed to the originating leg.
        #
        #   @return [Boolean, nil]
        optional :early_media, Telnyx::Internal::Type::Boolean

        # @!attribute from
        #   The `from` number to be used as the caller id presented to the destination (`to`
        #   number). The number should be in +E164 format. This attribute will default to
        #   the `to` number of the original call if omitted.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute from_display_name
        #   The `from_display_name` string to be used as the caller id name (SIP From
        #   Display Name) presented to the destination (`to` number). The string should have
        #   a maximum of 128 characters, containing only letters, numbers, spaces, and
        #   -\_~!.+ special characters. If ommited, the display name will be the same as the
        #   number in the `from` field.
        #
        #   @return [String, nil]
        optional :from_display_name, String

        # @!attribute media_encryption
        #   Defines whether media should be encrypted on the new call leg.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::MediaEncryption, nil]
        optional :media_encryption, enum: -> { Telnyx::Calls::ActionTransferParams::MediaEncryption }

        # @!attribute media_name
        #   The media_name of a file to be played back when the transfer destination answers
        #   before bridging the call. The media_name must point to a file previously
        #   uploaded to api.telnyx.com/v2/media by the same user/organization. The file must
        #   either be a WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute mute_dtmf
        #   When enabled, DTMF tones are not passed to the call participant. The webhooks
        #   containing the DTMF information will be sent.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::MuteDtmf, nil]
        optional :mute_dtmf, enum: -> { Telnyx::Calls::ActionTransferParams::MuteDtmf }

        # @!attribute park_after_unbridge
        #   Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #   or is transferred). If supplied with the value `self`, the current leg will be
        #   parked after unbridge. If not set, the default behavior is to hang up the leg.
        #
        #   @return [String, nil]
        optional :park_after_unbridge, String

        # @!attribute record
        #   Start recording automatically after an event. Disabled by default.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::Record, nil]
        optional :record, enum: -> { Telnyx::Calls::ActionTransferParams::Record }

        # @!attribute record_channels
        #   Defines which channel should be recorded ('single' or 'dual') when `record` is
        #   specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordChannels, nil]
        optional :record_channels, enum: -> { Telnyx::Calls::ActionTransferParams::RecordChannels }

        # @!attribute record_custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :record_custom_file_name, String

        # @!attribute record_format
        #   Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordFormat, nil]
        optional :record_format, enum: -> { Telnyx::Calls::ActionTransferParams::RecordFormat }

        # @!attribute record_max_length
        #   Defines the maximum length for the recording in seconds when `record` is
        #   specified. The minimum value is 0. The maximum value is 43200. The default value
        #   is 0 (infinite).
        #
        #   @return [Integer, nil]
        optional :record_max_length, Integer

        # @!attribute record_timeout_secs
        #   The number of seconds that Telnyx will wait for the recording to be stopped if
        #   silence is detected when `record` is specified. The timer only starts when the
        #   speech is detected. Please note that call transcription is used to detect
        #   silence and the related charge will be applied. The minimum value is 0. The
        #   default value is 0 (infinite).
        #
        #   @return [Integer, nil]
        optional :record_timeout_secs, Integer

        # @!attribute record_track
        #   The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        #   If only single track is specified (`inbound`, `outbound`), `channels`
        #   configuration is ignored and it will be recorded as mono (single channel).
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrack, nil]
        optional :record_track, enum: -> { Telnyx::Calls::ActionTransferParams::RecordTrack }

        # @!attribute record_trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrim, nil]
        optional :record_trim, enum: -> { Telnyx::Calls::ActionTransferParams::RecordTrim }

        # @!attribute sip_auth_password
        #   SIP Authentication password used for SIP challenges.
        #
        #   @return [String, nil]
        optional :sip_auth_password, String

        # @!attribute sip_auth_username
        #   SIP Authentication username used for SIP challenges.
        #
        #   @return [String, nil]
        optional :sip_auth_username, String

        # @!attribute sip_headers
        #   SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
        #   supported.
        #
        #   @return [Array<Telnyx::Models::SipHeader>, nil]
        optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

        # @!attribute sip_transport_protocol
        #   Defines SIP transport protocol to be used on the call.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::SipTransportProtocol, nil]
        optional :sip_transport_protocol, enum: -> { Telnyx::Calls::ActionTransferParams::SipTransportProtocol }

        # @!attribute sound_modifications
        #   Use this field to modify sound effects, for example adjust the pitch.
        #
        #   @return [Telnyx::Models::SoundModifications, nil]
        optional :sound_modifications, -> { Telnyx::SoundModifications }

        # @!attribute target_leg_client_state
        #   Use this field to add state to every subsequent webhook for the new leg. It must
        #   be a valid Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :target_leg_client_state, String

        # @!attribute time_limit_secs
        #   Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
        #   reached, the call will hangup and a `call.hangup` webhook with a `hangup_cause`
        #   of `time_limit` will be sent. For example, by setting a time limit of 120
        #   seconds, a Call Leg will be automatically terminated two minutes after being
        #   answered. The default time limit is 14400 seconds or 4 hours and this is also
        #   the maximum allowed call length.
        #
        #   @return [Integer, nil]
        optional :time_limit_secs, Integer

        # @!attribute timeout_secs
        #   The number of seconds that Telnyx will wait for the call to be answered by the
        #   destination to which it is being transferred. If the timeout is reached before
        #   an answer is received, the call will hangup and a `call.hangup` webhook with a
        #   `hangup_cause` of `timeout` will be sent. Minimum value is 5 seconds. Maximum
        #   value is 600 seconds.
        #
        #   @return [Integer, nil]
        optional :timeout_secs, Integer

        # @!attribute webhook_url
        #   Use this field to override the URL for which Telnyx will send subsequent
        #   webhooks to for this call.
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!attribute webhook_url_method
        #   HTTP request type used for `webhook_url`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionTransferParams::WebhookURLMethod, nil]
        optional :webhook_url_method, enum: -> { Telnyx::Calls::ActionTransferParams::WebhookURLMethod }

        # @!method initialize(to:, answering_machine_detection: nil, answering_machine_detection_config: nil, audio_url: nil, client_state: nil, command_id: nil, custom_headers: nil, early_media: nil, from: nil, from_display_name: nil, media_encryption: nil, media_name: nil, mute_dtmf: nil, park_after_unbridge: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, sip_auth_password: nil, sip_auth_username: nil, sip_headers: nil, sip_transport_protocol: nil, sound_modifications: nil, target_leg_client_state: nil, time_limit_secs: nil, timeout_secs: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionTransferParams} for more details.
        #
        #   @param to [String] The DID or SIP URI to dial out to.
        #
        #   @param answering_machine_detection [Symbol, Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetection] Enables Answering Machine Detection. When a call is answered, Telnyx runs real-t
        #
        #   @param answering_machine_detection_config [Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetectionConfig] Optional configuration parameters to modify 'answering_machine_detection' perfor
        #
        #   @param audio_url [String] The URL of a file to be played back when the transfer destination answers before
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE.
        #
        #   @param early_media [Boolean] If set to false, early media will not be passed to the originating leg.
        #
        #   @param from [String] The `from` number to be used as the caller id presented to the destination (`to`
        #
        #   @param from_display_name [String] The `from_display_name` string to be used as the caller id name (SIP From Displa
        #
        #   @param media_encryption [Symbol, Telnyx::Models::Calls::ActionTransferParams::MediaEncryption] Defines whether media should be encrypted on the new call leg.
        #
        #   @param media_name [String] The media_name of a file to be played back when the transfer destination answers
        #
        #   @param mute_dtmf [Symbol, Telnyx::Models::Calls::ActionTransferParams::MuteDtmf] When enabled, DTMF tones are not passed to the call participant. The webhooks co
        #
        #   @param park_after_unbridge [String] Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #
        #   @param record [Symbol, Telnyx::Models::Calls::ActionTransferParams::Record] Start recording automatically after an event. Disabled by default.
        #
        #   @param record_channels [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        #   @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param record_format [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        #   @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        #   @param record_track [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        #   @param record_trim [Symbol, Telnyx::Models::Calls::ActionTransferParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
        #
        #   @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE. Currently only User-to-User header is
        #
        #   @param sip_transport_protocol [Symbol, Telnyx::Models::Calls::ActionTransferParams::SipTransportProtocol] Defines SIP transport protocol to be used on the call.
        #
        #   @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
        #
        #   @param target_leg_client_state [String] Use this field to add state to every subsequent webhook for the new leg. It must
        #
        #   @param time_limit_secs [Integer] Sets the maximum duration of a Call Control Leg in seconds. If the time limit is
        #
        #   @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the call to be answered by the d
        #
        #   @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
        #
        #   @param webhook_url_method [Symbol, Telnyx::Models::Calls::ActionTransferParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Enables Answering Machine Detection. When a call is answered, Telnyx runs
        # real-time detection to determine if it was picked up by a human or a machine and
        # sends an `call.machine.detection.ended` webhook with the analysis result. If
        # 'greeting_end' or 'detect_words' is used and a 'machine' is detected, you will
        # receive another 'call.machine.greeting.ended' webhook when the answering machine
        # greeting ends with a beep or silence. If `detect_beep` is used, you will only
        # receive 'call.machine.greeting.ended' if a beep is detected.
        module AnsweringMachineDetection
          extend Telnyx::Internal::Type::Enum

          PREMIUM = :premium
          DETECT = :detect
          DETECT_BEEP = :detect_beep
          DETECT_WORDS = :detect_words
          GREETING_END = :greeting_end
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class AnsweringMachineDetectionConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute after_greeting_silence_millis
          #   Silence duration threshold after a greeting message or voice for it be
          #   considered human.
          #
          #   @return [Integer, nil]
          optional :after_greeting_silence_millis, Integer

          # @!attribute between_words_silence_millis
          #   Maximum threshold for silence between words.
          #
          #   @return [Integer, nil]
          optional :between_words_silence_millis, Integer

          # @!attribute greeting_duration_millis
          #   Maximum threshold of a human greeting. If greeting longer than this value,
          #   considered machine.
          #
          #   @return [Integer, nil]
          optional :greeting_duration_millis, Integer

          # @!attribute greeting_silence_duration_millis
          #   If machine already detected, maximum threshold for silence between words. If
          #   exceeded, the greeting is considered ended.
          #
          #   @return [Integer, nil]
          optional :greeting_silence_duration_millis, Integer

          # @!attribute greeting_total_analysis_time_millis
          #   If machine already detected, maximum timeout threshold to determine the end of
          #   the machine greeting.
          #
          #   @return [Integer, nil]
          optional :greeting_total_analysis_time_millis, Integer

          # @!attribute initial_silence_millis
          #   If initial silence duration is greater than this value, consider it a machine.
          #
          #   @return [Integer, nil]
          optional :initial_silence_millis, Integer

          # @!attribute maximum_number_of_words
          #   If number of detected words is greater than this value, consder it a machine.
          #
          #   @return [Integer, nil]
          optional :maximum_number_of_words, Integer

          # @!attribute maximum_word_length_millis
          #   If a single word lasts longer than this threshold, consider it a machine.
          #
          #   @return [Integer, nil]
          optional :maximum_word_length_millis, Integer

          # @!attribute silence_threshold
          #   Minimum noise threshold for any analysis.
          #
          #   @return [Integer, nil]
          optional :silence_threshold, Integer

          # @!attribute total_analysis_time_millis
          #   Maximum timeout threshold for overall detection.
          #
          #   @return [Integer, nil]
          optional :total_analysis_time_millis, Integer

          # @!method initialize(after_greeting_silence_millis: nil, between_words_silence_millis: nil, greeting_duration_millis: nil, greeting_silence_duration_millis: nil, greeting_total_analysis_time_millis: nil, initial_silence_millis: nil, maximum_number_of_words: nil, maximum_word_length_millis: nil, silence_threshold: nil, total_analysis_time_millis: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionTransferParams::AnsweringMachineDetectionConfig}
          #   for more details.
          #
          #   Optional configuration parameters to modify 'answering_machine_detection'
          #   performance.
          #
          #   @param after_greeting_silence_millis [Integer] Silence duration threshold after a greeting message or voice for it be considere
          #
          #   @param between_words_silence_millis [Integer] Maximum threshold for silence between words.
          #
          #   @param greeting_duration_millis [Integer] Maximum threshold of a human greeting. If greeting longer than this value, consi
          #
          #   @param greeting_silence_duration_millis [Integer] If machine already detected, maximum threshold for silence between words. If exc
          #
          #   @param greeting_total_analysis_time_millis [Integer] If machine already detected, maximum timeout threshold to determine the end of t
          #
          #   @param initial_silence_millis [Integer] If initial silence duration is greater than this value, consider it a machine.
          #
          #   @param maximum_number_of_words [Integer] If number of detected words is greater than this value, consder it a machine.
          #
          #   @param maximum_word_length_millis [Integer] If a single word lasts longer than this threshold, consider it a machine.
          #
          #   @param silence_threshold [Integer] Minimum noise threshold for any analysis.
          #
          #   @param total_analysis_time_millis [Integer] Maximum timeout threshold for overall detection.
        end

        # Defines whether media should be encrypted on the new call leg.
        module MediaEncryption
          extend Telnyx::Internal::Type::Enum

          DISABLED = :disabled
          SRTP = :SRTP
          DTLS = :DTLS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When enabled, DTMF tones are not passed to the call participant. The webhooks
        # containing the DTMF information will be sent.
        module MuteDtmf
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          BOTH = :both
          SELF = :self
          OPPOSITE = :opposite

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Start recording automatically after an event. Disabled by default.
        module Record
          extend Telnyx::Internal::Type::Enum

          RECORD_FROM_ANSWER = :"record-from-answer"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        module RecordChannels
          extend Telnyx::Internal::Type::Enum

          SINGLE = :single
          DUAL = :dual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        module RecordFormat
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        module RecordTrack
          extend Telnyx::Internal::Type::Enum

          BOTH = :both
          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module RecordTrim
          extend Telnyx::Internal::Type::Enum

          TRIM_SILENCE = :"trim-silence"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines SIP transport protocol to be used on the call.
        module SipTransportProtocol
          extend Telnyx::Internal::Type::Enum

          UDP = :UDP
          TCP = :TCP
          TLS = :TLS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          POST = :POST
          GET = :GET

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
