# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartPlaybackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartPlaybackParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the type of audio provided in `audio_url` or `playback_content`.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::OrSymbol
            )
          )
        end
        attr_reader :audio_type

        sig do
          params(
            audio_type:
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::OrSymbol
          ).void
        end
        attr_writer :audio_type

        # The URL of a file to be played back on the call. The URL can point to either a
        # WAV or MP3 file. media_name and audio_url cannot be used together in one
        # request.
        sig { returns(T.nilable(String)) }
        attr_reader :audio_url

        sig { params(audio_url: String).void }
        attr_writer :audio_url

        # Caches the audio file. Useful when playing the same audio file multiple times
        # during the call.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cache_audio

        sig { params(cache_audio: T::Boolean).void }
        attr_writer :cache_audio

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

        # The number of times the audio file should be played. If supplied, the value must
        # be an integer between 1 and 100, or the special string `infinity` for an endless
        # loop.
        sig { returns(T.nilable(Telnyx::Calls::Loopcount::Variants)) }
        attr_reader :loop_

        sig { params(loop_: Telnyx::Calls::Loopcount::Variants).void }
        attr_writer :loop_

        # The media_name of a file to be played back on the call. The media_name must
        # point to a file previously uploaded to api.telnyx.com/v2/media by the same
        # user/organization. The file must either be a WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # When enabled, audio will be mixed on top of any other audio that is actively
        # being played back. Note that `overlay: true` will only work if there is another
        # audio file already being played on the call.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overlay

        sig { params(overlay: T::Boolean).void }
        attr_writer :overlay

        # Allows a user to provide base64 encoded mp3 or wav. Note: when using this
        # parameter, `media_url` and `media_name` in the `playback_started` and
        # `playback_ended` webhooks will be empty
        sig { returns(T.nilable(String)) }
        attr_reader :playback_content

        sig { params(playback_content: String).void }
        attr_writer :playback_content

        # When specified, it stops the current audio being played. Specify `current` to
        # stop the current audio being played, and to play the next file in the queue.
        # Specify `all` to stop the current audio file being played and to also clear all
        # audio files from the queue.
        sig { returns(T.nilable(String)) }
        attr_reader :stop

        sig { params(stop: String).void }
        attr_writer :stop

        # Specifies the leg or legs on which audio will be played. If supplied, the value
        # must be either `self`, `opposite` or `both`.
        sig { returns(T.nilable(String)) }
        attr_reader :target_legs

        sig { params(target_legs: String).void }
        attr_writer :target_legs

        sig do
          params(
            audio_type:
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::OrSymbol,
            audio_url: String,
            cache_audio: T::Boolean,
            client_state: String,
            command_id: String,
            loop_: Telnyx::Calls::Loopcount::Variants,
            media_name: String,
            overlay: T::Boolean,
            playback_content: String,
            stop: String,
            target_legs: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the type of audio provided in `audio_url` or `playback_content`.
          audio_type: nil,
          # The URL of a file to be played back on the call. The URL can point to either a
          # WAV or MP3 file. media_name and audio_url cannot be used together in one
          # request.
          audio_url: nil,
          # Caches the audio file. Useful when playing the same audio file multiple times
          # during the call.
          cache_audio: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of times the audio file should be played. If supplied, the value must
          # be an integer between 1 and 100, or the special string `infinity` for an endless
          # loop.
          loop_: nil,
          # The media_name of a file to be played back on the call. The media_name must
          # point to a file previously uploaded to api.telnyx.com/v2/media by the same
          # user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          # When enabled, audio will be mixed on top of any other audio that is actively
          # being played back. Note that `overlay: true` will only work if there is another
          # audio file already being played on the call.
          overlay: nil,
          # Allows a user to provide base64 encoded mp3 or wav. Note: when using this
          # parameter, `media_url` and `media_name` in the `playback_started` and
          # `playback_ended` webhooks will be empty
          playback_content: nil,
          # When specified, it stops the current audio being played. Specify `current` to
          # stop the current audio being played, and to play the next file in the queue.
          # Specify `all` to stop the current audio file being played and to also clear all
          # audio files from the queue.
          stop: nil,
          # Specifies the leg or legs on which audio will be played. If supplied, the value
          # must be either `self`, `opposite` or `both`.
          target_legs: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              audio_type:
                Telnyx::Calls::ActionStartPlaybackParams::AudioType::OrSymbol,
              audio_url: String,
              cache_audio: T::Boolean,
              client_state: String,
              command_id: String,
              loop_: Telnyx::Calls::Loopcount::Variants,
              media_name: String,
              overlay: T::Boolean,
              playback_content: String,
              stop: String,
              target_legs: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Specifies the type of audio provided in `audio_url` or `playback_content`.
        module AudioType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartPlaybackParams::AudioType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::TaggedSymbol
            )
          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionStartPlaybackParams::AudioType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartPlaybackParams::AudioType::TaggedSymbol
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
