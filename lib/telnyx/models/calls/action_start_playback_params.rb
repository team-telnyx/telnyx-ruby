# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_playback
      class ActionStartPlaybackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute audio_type
        #   Specifies the type of audio provided in `audio_url` or `playback_content`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartPlaybackParams::AudioType, nil]
        optional :audio_type, enum: -> { Telnyx::Calls::ActionStartPlaybackParams::AudioType }

        # @!attribute audio_url
        #   The URL of a file to be played back on the call. The URL can point to either a
        #   WAV or MP3 file. media_name and audio_url cannot be used together in one
        #   request.
        #
        #   @return [String, nil]
        optional :audio_url, String

        # @!attribute cache_audio
        #   Caches the audio file. Useful when playing the same audio file multiple times
        #   during the call.
        #
        #   @return [Boolean, nil]
        optional :cache_audio, Telnyx::Internal::Type::Boolean

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

        # @!attribute loop_
        #   The number of times the audio file should be played. If supplied, the value must
        #   be an integer between 1 and 100, or the special string `infinity` for an endless
        #   loop.
        #
        #   @return [String, Integer, nil]
        optional :loop_, union: -> { Telnyx::Calls::Loopcount }, api_name: :loop

        # @!attribute media_name
        #   The media_name of a file to be played back on the call. The media_name must
        #   point to a file previously uploaded to api.telnyx.com/v2/media by the same
        #   user/organization. The file must either be a WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute overlay
        #   When enabled, audio will be mixed on top of any other audio that is actively
        #   being played back. Note that `overlay: true` will only work if there is another
        #   audio file already being played on the call.
        #
        #   @return [Boolean, nil]
        optional :overlay, Telnyx::Internal::Type::Boolean

        # @!attribute playback_content
        #   Allows a user to provide base64 encoded mp3 or wav. Note: when using this
        #   parameter, `media_url` and `media_name` in the `playback_started` and
        #   `playback_ended` webhooks will be empty
        #
        #   @return [String, nil]
        optional :playback_content, String

        # @!attribute stop
        #   When specified, it stops the current audio being played. Specify `current` to
        #   stop the current audio being played, and to play the next file in the queue.
        #   Specify `all` to stop the current audio file being played and to also clear all
        #   audio files from the queue.
        #
        #   @return [String, nil]
        optional :stop, String

        # @!attribute target_legs
        #   Specifies the leg or legs on which audio will be played. If supplied, the value
        #   must be either `self`, `opposite` or `both`.
        #
        #   @return [String, nil]
        optional :target_legs, String

        # @!method initialize(audio_type: nil, audio_url: nil, cache_audio: nil, client_state: nil, command_id: nil, loop_: nil, media_name: nil, overlay: nil, playback_content: nil, stop: nil, target_legs: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartPlaybackParams} for more details.
        #
        #   @param audio_type [Symbol, Telnyx::Models::Calls::ActionStartPlaybackParams::AudioType] Specifies the type of audio provided in `audio_url` or `playback_content`.
        #
        #   @param audio_url [String] The URL of a file to be played back on the call. The URL can point to either a W
        #
        #   @param cache_audio [Boolean] Caches the audio file. Useful when playing the same audio file multiple times du
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param loop_ [String, Integer] The number of times the audio file should be played. If supplied, the value must
        #
        #   @param media_name [String] The media_name of a file to be played back on the call. The media_name must poin
        #
        #   @param overlay [Boolean] When enabled, audio will be mixed on top of any other audio that is actively bei
        #
        #   @param playback_content [String] Allows a user to provide base64 encoded mp3 or wav. Note: when using this parame
        #
        #   @param stop [String] When specified, it stops the current audio being played. Specify `current` to st
        #
        #   @param target_legs [String] Specifies the leg or legs on which audio will be played. If supplied, the value
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Specifies the type of audio provided in `audio_url` or `playback_content`.
        module AudioType
          extend Telnyx::Internal::Type::Enum

          MP3 = :mp3
          WAV = :wav

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
