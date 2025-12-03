# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#bridge
      class ActionBridgeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id_to_bridge_with
        #   The Call Control ID of the call you want to bridge with, can't be used together
        #   with queue parameter or video_room_id parameter.
        #
        #   @return [String]
        required :call_control_id_to_bridge_with, String, api_name: :call_control_id

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

        # @!attribute mute_dtmf
        #   When enabled, DTMF tones are not passed to the call participant. The webhooks
        #   containing the DTMF information will be sent.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::MuteDtmf, nil]
        optional :mute_dtmf, enum: -> { Telnyx::Calls::ActionBridgeParams::MuteDtmf }

        # @!attribute park_after_unbridge
        #   Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #   or is transferred). If supplied with the value `self`, the current leg will be
        #   parked after unbridge. If not set, the default behavior is to hang up the leg.
        #
        #   @return [String, nil]
        optional :park_after_unbridge, String

        # @!attribute play_ringtone
        #   Specifies whether to play a ringtone if the call you want to bridge with has not
        #   yet been answered.
        #
        #   @return [Boolean, nil]
        optional :play_ringtone, Telnyx::Internal::Type::Boolean

        # @!attribute queue
        #   The name of the queue you want to bridge with, can't be used together with
        #   call_control_id parameter or video_room_id parameter. Bridging with a queue
        #   means bridging with the first call in the queue. The call will always be removed
        #   from the queue regardless of whether bridging succeeds. Returns an error when
        #   the queue is empty.
        #
        #   @return [String, nil]
        optional :queue, String

        # @!attribute record
        #   Start recording automatically after an event. Disabled by default.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Record, nil]
        optional :record, enum: -> { Telnyx::Calls::ActionBridgeParams::Record }

        # @!attribute record_channels
        #   Defines which channel should be recorded ('single' or 'dual') when `record` is
        #   specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordChannels, nil]
        optional :record_channels, enum: -> { Telnyx::Calls::ActionBridgeParams::RecordChannels }

        # @!attribute record_custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :record_custom_file_name, String

        # @!attribute record_format
        #   Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordFormat, nil]
        optional :record_format, enum: -> { Telnyx::Calls::ActionBridgeParams::RecordFormat }

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
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrack, nil]
        optional :record_track, enum: -> { Telnyx::Calls::ActionBridgeParams::RecordTrack }

        # @!attribute record_trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrim, nil]
        optional :record_trim, enum: -> { Telnyx::Calls::ActionBridgeParams::RecordTrim }

        # @!attribute ringtone
        #   Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        #   If not set, the US ringtone will be played.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Ringtone, nil]
        optional :ringtone, enum: -> { Telnyx::Calls::ActionBridgeParams::Ringtone }

        # @!attribute video_room_context
        #   The additional parameter that will be passed to the video conference. It is a
        #   text field and the user can decide how to use it. For example, you can set the
        #   participant name or pass JSON text. It can be used only with video_room_id
        #   parameter.
        #
        #   @return [String, nil]
        optional :video_room_context, String

        # @!attribute video_room_id
        #   The ID of the video room you want to bridge with, can't be used together with
        #   call_control_id parameter or queue parameter.
        #
        #   @return [String, nil]
        optional :video_room_id, String

        # @!method initialize(call_control_id_to_bridge_with:, client_state: nil, command_id: nil, mute_dtmf: nil, park_after_unbridge: nil, play_ringtone: nil, queue: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, ringtone: nil, video_room_context: nil, video_room_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionBridgeParams} for more details.
        #
        #   @param call_control_id_to_bridge_with [String] The Call Control ID of the call you want to bridge with, can't be used together
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param mute_dtmf [Symbol, Telnyx::Models::Calls::ActionBridgeParams::MuteDtmf] When enabled, DTMF tones are not passed to the call participant. The webhooks co
        #
        #   @param park_after_unbridge [String] Specifies behavior after the bridge ends (i.e. the opposite leg either hangs up
        #
        #   @param play_ringtone [Boolean] Specifies whether to play a ringtone if the call you want to bridge with has not
        #
        #   @param queue [String] The name of the queue you want to bridge with, can't be used together with
        #   call\_
        #
        #   @param record [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Record] Start recording automatically after an event. Disabled by default.
        #
        #   @param record_channels [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        #   @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param record_format [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        #   @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        #   @param record_track [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        #   @param record_trim [Symbol, Telnyx::Models::Calls::ActionBridgeParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param ringtone [Symbol, Telnyx::Models::Calls::ActionBridgeParams::Ringtone] Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        #
        #   @param video_room_context [String] The additional parameter that will be passed to the video conference. It is a te
        #
        #   @param video_room_id [String] The ID of the video room you want to bridge with, can't be used together with ca
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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

        # Specifies which country ringtone to play when `play_ringtone` is set to `true`.
        # If not set, the US ringtone will be played.
        module Ringtone
          extend Telnyx::Internal::Type::Enum

          AT = :at
          AU = :au
          BE = :be
          BG = :bg
          BR = :br
          CH = :ch
          CL = :cl
          CN = :cn
          CZ = :cz
          DE = :de
          DK = :dk
          EE = :ee
          ES = :es
          FI = :fi
          FR = :fr
          GR = :gr
          HU = :hu
          IL = :il
          IN = :in
          IT = :it
          JP = :jp
          LT = :lt
          MX = :mx
          MY = :my
          NL = :nl
          NO = :no
          NZ = :nz
          PH = :ph
          PL = :pl
          PT = :pt
          RU = :ru
          SE = :se
          SG = :sg
          TH = :th
          TW = :tw
          UK = :uk
          US_OLD = :"us-old"
          US = :us
          VE = :ve
          ZA = :za

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
