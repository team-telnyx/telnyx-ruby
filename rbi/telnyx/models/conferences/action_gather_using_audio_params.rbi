# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionGatherUsingAudioParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionGatherUsingAudioParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier and token for controlling the call leg that will receive the
        # gather prompt.
        sig { returns(String) }
        attr_accessor :call_control_id

        # The URL of the audio file to play as the gather prompt. Must be WAV or MP3
        # format.
        sig { returns(T.nilable(String)) }
        attr_reader :audio_url

        sig { params(audio_url: String).void }
        attr_writer :audio_url

        # Use this field to add state to every subsequent webhook. Must be a valid Base-64
        # encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Identifier for this gather command. Will be included in the gather ended
        # webhook. Maximum 100 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :gather_id

        sig { params(gather_id: String).void }
        attr_writer :gather_id

        # Duration in milliseconds to wait for the first digit before timing out.
        sig { returns(T.nilable(Integer)) }
        attr_reader :initial_timeout_millis

        sig { params(initial_timeout_millis: Integer).void }
        attr_writer :initial_timeout_millis

        # Duration in milliseconds to wait between digits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # URL of audio file to play when invalid input is received.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_audio_url

        sig { params(invalid_audio_url: String).void }
        attr_writer :invalid_audio_url

        # Name of media file to play when invalid input is received.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_media_name

        sig { params(invalid_media_name: String).void }
        attr_writer :invalid_media_name

        # Maximum number of digits to gather.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_digits

        sig { params(maximum_digits: Integer).void }
        attr_writer :maximum_digits

        # Maximum number of times to play the prompt if no input is received.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_tries

        sig { params(maximum_tries: Integer).void }
        attr_writer :maximum_tries

        # The name of the media file uploaded to the Media Storage API to play as the
        # gather prompt.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # Minimum number of digits to gather.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_digits

        sig { params(minimum_digits: Integer).void }
        attr_writer :minimum_digits

        # Whether to stop the audio playback when a DTMF digit is received.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stop_playback_on_dtmf

        sig { params(stop_playback_on_dtmf: T::Boolean).void }
        attr_writer :stop_playback_on_dtmf

        # Digit that terminates gathering.
        sig { returns(T.nilable(String)) }
        attr_reader :terminating_digit

        sig { params(terminating_digit: String).void }
        attr_writer :terminating_digit

        # Duration in milliseconds to wait for input before timing out.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # Digits that are valid for gathering. All other digits will be ignored.
        sig { returns(T.nilable(String)) }
        attr_reader :valid_digits

        sig { params(valid_digits: String).void }
        attr_writer :valid_digits

        sig do
          params(
            call_control_id: String,
            audio_url: String,
            client_state: String,
            gather_id: String,
            initial_timeout_millis: Integer,
            inter_digit_timeout_millis: Integer,
            invalid_audio_url: String,
            invalid_media_name: String,
            maximum_digits: Integer,
            maximum_tries: Integer,
            media_name: String,
            minimum_digits: Integer,
            stop_playback_on_dtmf: T::Boolean,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier and token for controlling the call leg that will receive the
          # gather prompt.
          call_control_id:,
          # The URL of the audio file to play as the gather prompt. Must be WAV or MP3
          # format.
          audio_url: nil,
          # Use this field to add state to every subsequent webhook. Must be a valid Base-64
          # encoded string.
          client_state: nil,
          # Identifier for this gather command. Will be included in the gather ended
          # webhook. Maximum 100 characters.
          gather_id: nil,
          # Duration in milliseconds to wait for the first digit before timing out.
          initial_timeout_millis: nil,
          # Duration in milliseconds to wait between digits.
          inter_digit_timeout_millis: nil,
          # URL of audio file to play when invalid input is received.
          invalid_audio_url: nil,
          # Name of media file to play when invalid input is received.
          invalid_media_name: nil,
          # Maximum number of digits to gather.
          maximum_digits: nil,
          # Maximum number of times to play the prompt if no input is received.
          maximum_tries: nil,
          # The name of the media file uploaded to the Media Storage API to play as the
          # gather prompt.
          media_name: nil,
          # Minimum number of digits to gather.
          minimum_digits: nil,
          # Whether to stop the audio playback when a DTMF digit is received.
          stop_playback_on_dtmf: nil,
          # Digit that terminates gathering.
          terminating_digit: nil,
          # Duration in milliseconds to wait for input before timing out.
          timeout_millis: nil,
          # Digits that are valid for gathering. All other digits will be ignored.
          valid_digits: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              audio_url: String,
              client_state: String,
              gather_id: String,
              initial_timeout_millis: Integer,
              inter_digit_timeout_millis: Integer,
              invalid_audio_url: String,
              invalid_media_name: String,
              maximum_digits: Integer,
              maximum_tries: Integer,
              media_name: String,
              minimum_digits: Integer,
              stop_playback_on_dtmf: T::Boolean,
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
