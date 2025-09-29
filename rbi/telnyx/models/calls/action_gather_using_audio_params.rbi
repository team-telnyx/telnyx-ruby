# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingAudioParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionGatherUsingAudioParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The URL of a file to be played back at the beginning of each prompt. The URL can
        # point to either a WAV or MP3 file. media_name and audio_url cannot be used
        # together in one request.
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

        # The number of milliseconds to wait for input between digits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # The URL of a file to play when digits don't match the `valid_digits` parameter
        # or the number of digits is not between `min` and `max`. The URL can point to
        # either a WAV or MP3 file. invalid_media_name and invalid_audio_url cannot be
        # used together in one request.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_audio_url

        sig { params(invalid_audio_url: String).void }
        attr_writer :invalid_audio_url

        # The media_name of a file to be played back when digits don't match the
        # `valid_digits` parameter or the number of digits is not between `min` and `max`.
        # The media_name must point to a file previously uploaded to
        # api.telnyx.com/v2/media by the same user/organization. The file must either be a
        # WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_media_name

        sig { params(invalid_media_name: String).void }
        attr_writer :invalid_media_name

        # The maximum number of digits to fetch. This parameter has a maximum value
        # of 128.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_digits

        sig { params(maximum_digits: Integer).void }
        attr_writer :maximum_digits

        # The maximum number of times the file should be played if there is no input from
        # the user on the call.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_tries

        sig { params(maximum_tries: Integer).void }
        attr_writer :maximum_tries

        # The media_name of a file to be played back at the beginning of each prompt. The
        # media_name must point to a file previously uploaded to api.telnyx.com/v2/media
        # by the same user/organization. The file must either be a WAV or MP3 file.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # The minimum number of digits to fetch. This parameter has a minimum value of 1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_digits

        sig { params(minimum_digits: Integer).void }
        attr_writer :minimum_digits

        # The digit used to terminate input if fewer than `maximum_digits` digits have
        # been gathered.
        sig { returns(T.nilable(String)) }
        attr_reader :terminating_digit

        sig { params(terminating_digit: String).void }
        attr_writer :terminating_digit

        # The number of milliseconds to wait for a DTMF response after file playback ends
        # before a replaying the sound file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # A list of all digits accepted as valid.
        sig { returns(T.nilable(String)) }
        attr_reader :valid_digits

        sig { params(valid_digits: String).void }
        attr_writer :valid_digits

        sig do
          params(
            audio_url: String,
            client_state: String,
            command_id: String,
            inter_digit_timeout_millis: Integer,
            invalid_audio_url: String,
            invalid_media_name: String,
            maximum_digits: Integer,
            maximum_tries: Integer,
            media_name: String,
            minimum_digits: Integer,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL of a file to be played back at the beginning of each prompt. The URL can
          # point to either a WAV or MP3 file. media_name and audio_url cannot be used
          # together in one request.
          audio_url: nil,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The URL of a file to play when digits don't match the `valid_digits` parameter
          # or the number of digits is not between `min` and `max`. The URL can point to
          # either a WAV or MP3 file. invalid_media_name and invalid_audio_url cannot be
          # used together in one request.
          invalid_audio_url: nil,
          # The media_name of a file to be played back when digits don't match the
          # `valid_digits` parameter or the number of digits is not between `min` and `max`.
          # The media_name must point to a file previously uploaded to
          # api.telnyx.com/v2/media by the same user/organization. The file must either be a
          # WAV or MP3 file.
          invalid_media_name: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The maximum number of times the file should be played if there is no input from
          # the user on the call.
          maximum_tries: nil,
          # The media_name of a file to be played back at the beginning of each prompt. The
          # media_name must point to a file previously uploaded to api.telnyx.com/v2/media
          # by the same user/organization. The file must either be a WAV or MP3 file.
          media_name: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait for a DTMF response after file playback ends
          # before a replaying the sound file.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              audio_url: String,
              client_state: String,
              command_id: String,
              inter_digit_timeout_millis: Integer,
              invalid_audio_url: String,
              invalid_media_name: String,
              maximum_digits: Integer,
              maximum_tries: Integer,
              media_name: String,
              minimum_digits: Integer,
              terminating_digit: String,
              timeout_millis: Integer,
              valid_digits: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
