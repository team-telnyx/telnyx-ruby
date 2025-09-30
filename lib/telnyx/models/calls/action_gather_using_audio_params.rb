# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather_using_audio
      class ActionGatherUsingAudioParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute audio_url
        #   The URL of a file to be played back at the beginning of each prompt. The URL can
        #   point to either a WAV or MP3 file. media_name and audio_url cannot be used
        #   together in one request.
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

        # @!attribute inter_digit_timeout_millis
        #   The number of milliseconds to wait for input between digits.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute invalid_audio_url
        #   The URL of a file to play when digits don't match the `valid_digits` parameter
        #   or the number of digits is not between `min` and `max`. The URL can point to
        #   either a WAV or MP3 file. invalid_media_name and invalid_audio_url cannot be
        #   used together in one request.
        #
        #   @return [String, nil]
        optional :invalid_audio_url, String

        # @!attribute invalid_media_name
        #   The media_name of a file to be played back when digits don't match the
        #   `valid_digits` parameter or the number of digits is not between `min` and `max`.
        #   The media_name must point to a file previously uploaded to
        #   api.telnyx.com/v2/media by the same user/organization. The file must either be a
        #   WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :invalid_media_name, String

        # @!attribute maximum_digits
        #   The maximum number of digits to fetch. This parameter has a maximum value
        #   of 128.
        #
        #   @return [Integer, nil]
        optional :maximum_digits, Integer

        # @!attribute maximum_tries
        #   The maximum number of times the file should be played if there is no input from
        #   the user on the call.
        #
        #   @return [Integer, nil]
        optional :maximum_tries, Integer

        # @!attribute media_name
        #   The media_name of a file to be played back at the beginning of each prompt. The
        #   media_name must point to a file previously uploaded to api.telnyx.com/v2/media
        #   by the same user/organization. The file must either be a WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute minimum_digits
        #   The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        #   @return [Integer, nil]
        optional :minimum_digits, Integer

        # @!attribute terminating_digit
        #   The digit used to terminate input if fewer than `maximum_digits` digits have
        #   been gathered.
        #
        #   @return [String, nil]
        optional :terminating_digit, String

        # @!attribute timeout_millis
        #   The number of milliseconds to wait for a DTMF response after file playback ends
        #   before a replaying the sound file.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute valid_digits
        #   A list of all digits accepted as valid.
        #
        #   @return [String, nil]
        optional :valid_digits, String

        # @!method initialize(audio_url: nil, client_state: nil, command_id: nil, inter_digit_timeout_millis: nil, invalid_audio_url: nil, invalid_media_name: nil, maximum_digits: nil, maximum_tries: nil, media_name: nil, minimum_digits: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionGatherUsingAudioParams} for more details.
        #
        #   @param audio_url [String] The URL of a file to be played back at the beginning of each prompt. The URL can
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        #   @param invalid_audio_url [String] The URL of a file to play when digits don't match the `valid_digits` parameter o
        #
        #   @param invalid_media_name [String] The media_name of a file to be played back when digits don't match the `valid_di
        #
        #   @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        #   @param maximum_tries [Integer] The maximum number of times the file should be played if there is no input from
        #
        #   @param media_name [String] The media_name of a file to be played back at the beginning of each prompt. The
        #
        #   @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        #   @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        #   @param timeout_millis [Integer] The number of milliseconds to wait for a DTMF response after file playback ends
        #
        #   @param valid_digits [String] A list of all digits accepted as valid.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
