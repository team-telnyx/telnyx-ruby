# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionAnswerParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionAnswerParams, Telnyx::Internal::AnyHash)
          end

        # Use this field to set the Billing Group ID for the call. Must be a valid and
        # existing Billing Group ID.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

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

        # Custom headers to be added to the SIP INVITE response.
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol
            )
          )
        end
        attr_reader :preferred_codecs

        sig do
          params(
            preferred_codecs:
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol
          ).void
        end
        attr_writer :preferred_codecs

        # Start recording automatically after an event. Disabled by default.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::Record::OrSymbol)
          )
        end
        attr_reader :record

        sig do
          params(
            record: Telnyx::Calls::ActionAnswerParams::Record::OrSymbol
          ).void
        end
        attr_writer :record

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol
            )
          )
        end
        attr_reader :record_channels

        sig do
          params(
            record_channels:
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol
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
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol)
          )
        end
        attr_reader :record_format

        sig do
          params(
            record_format:
              Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol
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
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol)
          )
        end
        attr_reader :record_track

        sig do
          params(
            record_track:
              Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol
          ).void
        end
        attr_writer :record_track

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol)
          )
        end
        attr_reader :record_trim

        sig do
          params(
            record_trim: Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol
          ).void
        end
        attr_writer :record_trim

        # Generate silence RTP packets when no transmission available.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_silence_when_idle

        sig { params(send_silence_when_idle: T::Boolean).void }
        attr_writer :send_silence_when_idle

        # SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        # header is supported.
        sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
        attr_reader :sip_headers

        sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
        attr_writer :sip_headers

        # Use this field to modify sound effects, for example adjust the pitch.
        sig { returns(T.nilable(Telnyx::SoundModifications)) }
        attr_reader :sound_modifications

        sig do
          params(sound_modifications: Telnyx::SoundModifications::OrHash).void
        end
        attr_writer :sound_modifications

        # Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream_bidirectional_mode=rtp. Case sensitive.
        sig { returns(T.nilable(Telnyx::StreamBidirectionalCodec::OrSymbol)) }
        attr_reader :stream_bidirectional_codec

        sig do
          params(
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_codec

        # Configures method of bidirectional streaming (mp3, rtp).
        sig { returns(T.nilable(Telnyx::StreamBidirectionalMode::OrSymbol)) }
        attr_reader :stream_bidirectional_mode

        sig do
          params(
            stream_bidirectional_mode: Telnyx::StreamBidirectionalMode::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_mode

        # Specifies which call legs should receive the bidirectional stream audio.
        sig do
          returns(T.nilable(Telnyx::StreamBidirectionalTargetLegs::OrSymbol))
        end
        attr_reader :stream_bidirectional_target_legs

        sig do
          params(
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_target_legs

        # Specifies the codec to be used for the streamed audio. When set to 'default' or
        # when transcoding is not possible, the codec from the call will be used.
        sig { returns(T.nilable(Telnyx::StreamCodec::OrSymbol)) }
        attr_reader :stream_codec

        sig { params(stream_codec: Telnyx::StreamCodec::OrSymbol).void }
        attr_writer :stream_codec

        # Specifies which track should be streamed.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol)
          )
        end
        attr_reader :stream_track

        sig do
          params(
            stream_track:
              Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol
          ).void
        end
        attr_writer :stream_track

        # The destination WebSocket address where the stream is going to be delivered.
        sig { returns(T.nilable(String)) }
        attr_reader :stream_url

        sig { params(stream_url: String).void }
        attr_writer :stream_url

        # Enable transcription upon call answer. The default value is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transcription

        sig { params(transcription: T::Boolean).void }
        attr_writer :transcription

        sig { returns(T.nilable(Telnyx::Calls::TranscriptionStartRequest)) }
        attr_reader :transcription_config

        sig do
          params(
            transcription_config:
              Telnyx::Calls::TranscriptionStartRequest::OrHash
          ).void
        end
        attr_writer :transcription_config

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
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol
            )
          )
        end
        attr_reader :webhook_url_method

        sig do
          params(
            webhook_url_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol
          ).void
        end
        attr_writer :webhook_url_method

        sig do
          params(
            billing_group_id: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            preferred_codecs:
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol,
            record: Telnyx::Calls::ActionAnswerParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol,
            send_silence_when_idle: T::Boolean,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            sound_modifications: Telnyx::SoundModifications::OrHash,
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol,
            stream_bidirectional_mode:
              Telnyx::StreamBidirectionalMode::OrSymbol,
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
            stream_codec: Telnyx::StreamCodec::OrSymbol,
            stream_track:
              Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol,
            stream_url: String,
            transcription: T::Boolean,
            transcription_config:
              Telnyx::Calls::TranscriptionStartRequest::OrHash,
            webhook_url: String,
            webhook_url_method:
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to set the Billing Group ID for the call. Must be a valid and
          # existing Billing Group ID.
          billing_group_id: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE response.
          custom_headers: nil,
          # The list of comma-separated codecs in a preferred order for the forked media to
          # be received.
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
          # Generate silence RTP packets when no transmission available.
          send_silence_when_idle: nil,
          # SIP headers to be added to the SIP INVITE response. Currently only User-to-User
          # header is supported.
          sip_headers: nil,
          # Use this field to modify sound effects, for example adjust the pitch.
          sound_modifications: nil,
          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          stream_bidirectional_codec: nil,
          # Configures method of bidirectional streaming (mp3, rtp).
          stream_bidirectional_mode: nil,
          # Specifies which call legs should receive the bidirectional stream audio.
          stream_bidirectional_target_legs: nil,
          # Specifies the codec to be used for the streamed audio. When set to 'default' or
          # when transcoding is not possible, the codec from the call will be used.
          stream_codec: nil,
          # Specifies which track should be streamed.
          stream_track: nil,
          # The destination WebSocket address where the stream is going to be delivered.
          stream_url: nil,
          # Enable transcription upon call answer. The default value is false.
          transcription: nil,
          transcription_config: nil,
          # Use this field to override the URL for which Telnyx will send subsequent
          # webhooks to for this call.
          webhook_url: nil,
          # HTTP request type used for `webhook_url`.
          webhook_url_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              billing_group_id: String,
              client_state: String,
              command_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
              preferred_codecs:
                Telnyx::Calls::ActionAnswerParams::PreferredCodecs::OrSymbol,
              record: Telnyx::Calls::ActionAnswerParams::Record::OrSymbol,
              record_channels:
                Telnyx::Calls::ActionAnswerParams::RecordChannels::OrSymbol,
              record_custom_file_name: String,
              record_format:
                Telnyx::Calls::ActionAnswerParams::RecordFormat::OrSymbol,
              record_max_length: Integer,
              record_timeout_secs: Integer,
              record_track:
                Telnyx::Calls::ActionAnswerParams::RecordTrack::OrSymbol,
              record_trim:
                Telnyx::Calls::ActionAnswerParams::RecordTrim::OrSymbol,
              send_silence_when_idle: T::Boolean,
              sip_headers: T::Array[Telnyx::SipHeader],
              sound_modifications: Telnyx::SoundModifications,
              stream_bidirectional_codec:
                Telnyx::StreamBidirectionalCodec::OrSymbol,
              stream_bidirectional_mode:
                Telnyx::StreamBidirectionalMode::OrSymbol,
              stream_bidirectional_target_legs:
                Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
              stream_codec: Telnyx::StreamCodec::OrSymbol,
              stream_track:
                Telnyx::Calls::ActionAnswerParams::StreamTrack::OrSymbol,
              stream_url: String,
              transcription: T::Boolean,
              transcription_config: Telnyx::Calls::TranscriptionStartRequest,
              webhook_url: String,
              webhook_url_method:
                Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        module PreferredCodecs
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::PreferredCodecs)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          G722_PCMU_PCMA_G729_OPUS_VP8_H264 =
            T.let(
              :"G722,PCMU,PCMA,G729,OPUS,VP8,H264",
              Telnyx::Calls::ActionAnswerParams::PreferredCodecs::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::PreferredCodecs::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::Record)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECORD_FROM_ANSWER =
            T.let(
              :"record-from-answer",
              Telnyx::Calls::ActionAnswerParams::Record::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionAnswerParams::Record::TaggedSymbol]
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
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordChannels)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordChannels::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordFormat)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordFormat::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )
          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordTrack::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::RecordTrim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Calls::ActionAnswerParams::RecordTrim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::RecordTrim::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies which track should be streamed.
        module StreamTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::StreamTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND_TRACK =
            T.let(
              :inbound_track,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )
          OUTBOUND_TRACK =
            T.let(
              :outbound_track,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )
          BOTH_TRACKS =
            T.let(
              :both_tracks,
              Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::StreamTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionAnswerParams::WebhookURLMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          POST =
            T.let(
              :POST,
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
            )
          GET =
            T.let(
              :GET,
              Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAnswerParams::WebhookURLMethod::TaggedSymbol
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
