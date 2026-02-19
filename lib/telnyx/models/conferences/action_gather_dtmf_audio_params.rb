# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#gather_dtmf_audio
      class ActionGatherDtmfAudioParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #   Unique identifier and token for controlling the call leg that will receive the
        #   gather prompt.
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute audio_url
        #   The URL of the audio file to play as the gather prompt. Must be WAV or MP3
        #   format.
        #
        #   @return [String, nil]
        optional :audio_url, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. Must be a valid Base-64
        #   encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute gather_id
        #   Identifier for this gather command. Will be included in the gather ended
        #   webhook. Maximum 100 characters.
        #
        #   @return [String, nil]
        optional :gather_id, String

        # @!attribute initial_timeout_millis
        #   Duration in milliseconds to wait for the first digit before timing out.
        #
        #   @return [Integer, nil]
        optional :initial_timeout_millis, Integer

        # @!attribute inter_digit_timeout_millis
        #   Duration in milliseconds to wait between digits.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute invalid_audio_url
        #   URL of audio file to play when invalid input is received.
        #
        #   @return [String, nil]
        optional :invalid_audio_url, String

        # @!attribute invalid_media_name
        #   Name of media file to play when invalid input is received.
        #
        #   @return [String, nil]
        optional :invalid_media_name, String

        # @!attribute maximum_digits
        #   Maximum number of digits to gather.
        #
        #   @return [Integer, nil]
        optional :maximum_digits, Integer

        # @!attribute maximum_tries
        #   Maximum number of times to play the prompt if no input is received.
        #
        #   @return [Integer, nil]
        optional :maximum_tries, Integer

        # @!attribute media_name
        #   The name of the media file uploaded to the Media Storage API to play as the
        #   gather prompt.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute minimum_digits
        #   Minimum number of digits to gather.
        #
        #   @return [Integer, nil]
        optional :minimum_digits, Integer

        # @!attribute stop_playback_on_dtmf
        #   Whether to stop the audio playback when a DTMF digit is received.
        #
        #   @return [Boolean, nil]
        optional :stop_playback_on_dtmf, Telnyx::Internal::Type::Boolean

        # @!attribute terminating_digit
        #   Digit that terminates gathering.
        #
        #   @return [String, nil]
        optional :terminating_digit, String

        # @!attribute timeout_millis
        #   Duration in milliseconds to wait for input before timing out.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute valid_digits
        #   Digits that are valid for gathering. All other digits will be ignored.
        #
        #   @return [String, nil]
        optional :valid_digits, String

        # @!method initialize(call_control_id:, audio_url: nil, client_state: nil, gather_id: nil, initial_timeout_millis: nil, inter_digit_timeout_millis: nil, invalid_audio_url: nil, invalid_media_name: nil, maximum_digits: nil, maximum_tries: nil, media_name: nil, minimum_digits: nil, stop_playback_on_dtmf: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionGatherDtmfAudioParams} for more details.
        #
        #   @param call_control_id [String] Unique identifier and token for controlling the call leg that will receive the g
        #
        #   @param audio_url [String] The URL of the audio file to play as the gather prompt. Must be WAV or MP3 forma
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. Must be a valid Base-64
        #
        #   @param gather_id [String] Identifier for this gather command. Will be included in the gather ended webhook
        #
        #   @param initial_timeout_millis [Integer] Duration in milliseconds to wait for the first digit before timing out.
        #
        #   @param inter_digit_timeout_millis [Integer] Duration in milliseconds to wait between digits.
        #
        #   @param invalid_audio_url [String] URL of audio file to play when invalid input is received.
        #
        #   @param invalid_media_name [String] Name of media file to play when invalid input is received.
        #
        #   @param maximum_digits [Integer] Maximum number of digits to gather.
        #
        #   @param maximum_tries [Integer] Maximum number of times to play the prompt if no input is received.
        #
        #   @param media_name [String] The name of the media file uploaded to the Media Storage API to play as the gath
        #
        #   @param minimum_digits [Integer] Minimum number of digits to gather.
        #
        #   @param stop_playback_on_dtmf [Boolean] Whether to stop the audio playback when a DTMF digit is received.
        #
        #   @param terminating_digit [String] Digit that terminates gathering.
        #
        #   @param timeout_millis [Integer] Duration in milliseconds to wait for input before timing out.
        #
        #   @param valid_digits [String] Digits that are valid for gathering. All other digits will be ignored.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
