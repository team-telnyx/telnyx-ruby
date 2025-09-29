# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather
      class ActionGatherParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

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

        # @!attribute gather_id
        #   An id that will be sent back in the corresponding `call.gather.ended` webhook.
        #   Will be randomly generated if not specified.
        #
        #   @return [String, nil]
        optional :gather_id, String

        # @!attribute initial_timeout_millis
        #   The number of milliseconds to wait for the first DTMF.
        #
        #   @return [Integer, nil]
        optional :initial_timeout_millis, Integer

        # @!attribute inter_digit_timeout_millis
        #   The number of milliseconds to wait for input between digits.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute maximum_digits
        #   The maximum number of digits to fetch. This parameter has a maximum value
        #   of 128.
        #
        #   @return [Integer, nil]
        optional :maximum_digits, Integer

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
        #   The number of milliseconds to wait to complete the request.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute valid_digits
        #   A list of all digits accepted as valid.
        #
        #   @return [String, nil]
        optional :valid_digits, String

        # @!method initialize(client_state: nil, command_id: nil, gather_id: nil, initial_timeout_millis: nil, inter_digit_timeout_millis: nil, maximum_digits: nil, minimum_digits: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionGatherParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param gather_id [String] An id that will be sent back in the corresponding `call.gather.ended` webhook. W
        #
        #   @param initial_timeout_millis [Integer] The number of milliseconds to wait for the first DTMF.
        #
        #   @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        #   @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        #   @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        #   @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        #   @param timeout_millis [Integer] The number of milliseconds to wait to complete the request.
        #
        #   @param valid_digits [String] A list of all digits accepted as valid.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
