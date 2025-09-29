# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionBridgeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionBridgeParams, Telnyx::Internal::AnyHash)
          end

        # The Call Control ID of the call you want to bridge with, can't be used together
        # with queue parameter or video_room_id parameter.
        sig { returns(String) }
        attr_accessor :body_call_control_id

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

        # When enabled, DTMF tones are not passed to the call participant. The webhooks
        # containing the DTMF information will be sent.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionBridgeParams::MuteDtmf::OrSymbol)
          )
        end
        attr_reader :mute_dtmf

        sig do
          params(
            mute_dtmf: Telnyx::Calls::ActionBridgeParams::MuteDtmf::OrSymbol
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

        # Specifies whether to play a ringtone if the call you want to bridge with has not
        # yet been answered.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :play_ringtone

        sig { params(play_ringtone: T::Boolean).void }
        attr_writer :play_ringtone

        # The name of the queue you want to bridge with, can't be used together with
        # call_control_id parameter or video_room_id parameter. Bridging with a queue
        # means bridging with the first call in the queue. The call will always be removed
        # from the queue regardless of whether bridging succeeds. Returns an error when
        # the queue is empty.
        sig { returns(T.nilable(String)) }
        attr_reader :queue

        sig { params(queue: String).void }
        attr_writer :queue

        # Start recording automatically after an event. Disabled by default.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionBridgeParams::Record::OrSymbol)
          )
        end
        attr_reader :record

        sig do
          params(
            record: Telnyx::Calls::ActionBridgeParams::Record::OrSymbol
          ).void
        end
        attr_writer :record

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionBridgeParams::RecordChannels::OrSymbol
            )
          )
        end
        attr_reader :record_channels

        sig do
          params(
            record_channels:
              Telnyx::Calls::ActionBridgeParams::RecordChannels::OrSymbol
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
            T.nilable(Telnyx::Calls::ActionBridgeParams::RecordFormat::OrSymbol)
          )
        end
        attr_reader :record_format

        sig do
          params(
            record_format:
              Telnyx::Calls::ActionBridgeParams::RecordFormat::OrSymbol
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
            T.nilable(Telnyx::Calls::ActionBridgeParams::RecordTrack::OrSymbol)
          )
        end
        attr_reader :record_track

        sig do
          params(
            record_track:
              Telnyx::Calls::ActionBridgeParams::RecordTrack::OrSymbol
          ).void
        end
        attr_writer :record_track

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionBridgeParams::RecordTrim::OrSymbol)
          )
        end
        attr_reader :record_trim

        sig do
          params(
            record_trim: Telnyx::Calls::ActionBridgeParams::RecordTrim::OrSymbol
          ).void
        end
        attr_writer :record_trim

        # Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        # If not set, the US ringtone will be played.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionBridgeParams::Ringtone::OrSymbol)
          )
        end
        attr_reader :ringtone

        sig do
          params(
            ringtone: Telnyx::Calls::ActionBridgeParams::Ringtone::OrSymbol
          ).void
        end
        attr_writer :ringtone

        # The additional parameter that will be passed to the video conference. It is a
        # text field and the user can decide how to use it. For example, you can set the
        # participant name or pass JSON text. It can be used only with video_room_id
        # parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :video_room_context

        sig { params(video_room_context: String).void }
        attr_writer :video_room_context

        # The ID of the video room you want to bridge with, can't be used together with
        # call_control_id parameter or queue parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :video_room_id

        sig { params(video_room_id: String).void }
        attr_writer :video_room_id

        sig do
          params(
            body_call_control_id: String,
            client_state: String,
            command_id: String,
            mute_dtmf: Telnyx::Calls::ActionBridgeParams::MuteDtmf::OrSymbol,
            park_after_unbridge: String,
            play_ringtone: T::Boolean,
            queue: String,
            record: Telnyx::Calls::ActionBridgeParams::Record::OrSymbol,
            record_channels:
              Telnyx::Calls::ActionBridgeParams::RecordChannels::OrSymbol,
            record_custom_file_name: String,
            record_format:
              Telnyx::Calls::ActionBridgeParams::RecordFormat::OrSymbol,
            record_max_length: Integer,
            record_timeout_secs: Integer,
            record_track:
              Telnyx::Calls::ActionBridgeParams::RecordTrack::OrSymbol,
            record_trim:
              Telnyx::Calls::ActionBridgeParams::RecordTrim::OrSymbol,
            ringtone: Telnyx::Calls::ActionBridgeParams::Ringtone::OrSymbol,
            video_room_context: String,
            video_room_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The Call Control ID of the call you want to bridge with, can't be used together
          # with queue parameter or video_room_id parameter.
          body_call_control_id:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # When enabled, DTMF tones are not passed to the call participant. The webhooks
          # containing the DTMF information will be sent.
          mute_dtmf: nil,
          # Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
          # or is transferred). If supplied with the value `self`, the current leg will be
          # parked after unbridge. If not set, the default behavior is to hang up the leg.
          park_after_unbridge: nil,
          # Specifies whether to play a ringtone if the call you want to bridge with has not
          # yet been answered.
          play_ringtone: nil,
          # The name of the queue you want to bridge with, can't be used together with
          # call_control_id parameter or video_room_id parameter. Bridging with a queue
          # means bridging with the first call in the queue. The call will always be removed
          # from the queue regardless of whether bridging succeeds. Returns an error when
          # the queue is empty.
          queue: nil,
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
          # Specifies which country ringtone to play when `play_ringtone` is set to `true`.
          # If not set, the US ringtone will be played.
          ringtone: nil,
          # The additional parameter that will be passed to the video conference. It is a
          # text field and the user can decide how to use it. For example, you can set the
          # participant name or pass JSON text. It can be used only with video_room_id
          # parameter.
          video_room_context: nil,
          # The ID of the video room you want to bridge with, can't be used together with
          # call_control_id parameter or queue parameter.
          video_room_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              body_call_control_id: String,
              client_state: String,
              command_id: String,
              mute_dtmf: Telnyx::Calls::ActionBridgeParams::MuteDtmf::OrSymbol,
              park_after_unbridge: String,
              play_ringtone: T::Boolean,
              queue: String,
              record: Telnyx::Calls::ActionBridgeParams::Record::OrSymbol,
              record_channels:
                Telnyx::Calls::ActionBridgeParams::RecordChannels::OrSymbol,
              record_custom_file_name: String,
              record_format:
                Telnyx::Calls::ActionBridgeParams::RecordFormat::OrSymbol,
              record_max_length: Integer,
              record_timeout_secs: Integer,
              record_track:
                Telnyx::Calls::ActionBridgeParams::RecordTrack::OrSymbol,
              record_trim:
                Telnyx::Calls::ActionBridgeParams::RecordTrim::OrSymbol,
              ringtone: Telnyx::Calls::ActionBridgeParams::Ringtone::OrSymbol,
              video_room_context: String,
              video_room_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # When enabled, DTMF tones are not passed to the call participant. The webhooks
        # containing the DTMF information will be sent.
        module MuteDtmf
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::MuteDtmf)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::Calls::ActionBridgeParams::MuteDtmf::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionBridgeParams::MuteDtmf::TaggedSymbol
            )
          SELF =
            T.let(
              :self,
              Telnyx::Calls::ActionBridgeParams::MuteDtmf::TaggedSymbol
            )
          OPPOSITE =
            T.let(
              :opposite,
              Telnyx::Calls::ActionBridgeParams::MuteDtmf::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::MuteDtmf::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::Record)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECORD_FROM_ANSWER =
            T.let(
              :"record-from-answer",
              Telnyx::Calls::ActionBridgeParams::Record::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionBridgeParams::Record::TaggedSymbol]
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
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::RecordChannels)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::Calls::ActionBridgeParams::RecordChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Calls::ActionBridgeParams::RecordChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::RecordChannels::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::RecordFormat)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionBridgeParams::RecordFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionBridgeParams::RecordFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::RecordFormat::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::RecordTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionBridgeParams::RecordTrack::TaggedSymbol
            )
          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionBridgeParams::RecordTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionBridgeParams::RecordTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::RecordTrack::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::RecordTrim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Calls::ActionBridgeParams::RecordTrim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::RecordTrim::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        # If not set, the US ringtone will be played.
        module Ringtone
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionBridgeParams::Ringtone)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AT =
            T.let(
              :at,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          AU =
            T.let(
              :au,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          CL =
            T.let(
              :cl,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          CN =
            T.let(
              :cn,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          CZ =
            T.let(
              :cz,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          DK =
            T.let(
              :dk,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          GR =
            T.let(
              :gr,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          IL =
            T.let(
              :il,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          IN =
            T.let(
              :in,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          JP =
            T.let(
              :jp,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          MX =
            T.let(
              :mx,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          NZ =
            T.let(
              :nz,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          PH =
            T.let(
              :ph,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          US_OLD =
            T.let(
              :"us-old",
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          US =
            T.let(
              :us,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionBridgeParams::Ringtone::TaggedSymbol
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
