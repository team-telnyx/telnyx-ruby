# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#send_dtmf
      class ActionSendDtmfParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute digits
        #   DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
        #   using w (0.5s) and W (1s).
        #
        #   @return [String]
        required :digits, String

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

        # @!attribute duration_millis
        #   Specifies for how many milliseconds each digit will be played in the audio
        #   stream. Ranges from 100 to 500ms
        #
        #   @return [Integer, nil]
        optional :duration_millis, Integer

        # @!method initialize(digits:, client_state: nil, command_id: nil, duration_millis: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionSendDtmfParams} for more details.
        #
        #   @param digits [String] DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
        #   us
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param duration_millis [Integer] Specifies for how many milliseconds each digit will be played in the audio strea
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
