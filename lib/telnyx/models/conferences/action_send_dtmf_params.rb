# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#send_dtmf
      class ActionSendDtmfParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute digits
        #   DTMF digits to send. Valid characters: 0-9, A-D, \*, #, w (0.5s pause), W (1s
        #   pause).
        #
        #   @return [String]
        required :digits, String

        # @!attribute call_control_ids
        #   Array of participant call control IDs to send DTMF to. When empty, DTMF will be
        #   sent to all participants.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. Must be a valid Base-64
        #   encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute duration_millis
        #   Duration of each DTMF digit in milliseconds.
        #
        #   @return [Integer, nil]
        optional :duration_millis, Integer

        # @!method initialize(digits:, call_control_ids: nil, client_state: nil, duration_millis: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionSendDtmfParams} for more details.
        #
        #   @param digits [String] DTMF digits to send. Valid characters: 0-9, A-D, \*, #, w (0.5s pause), W (1s
        #   pau
        #
        #   @param call_control_ids [Array<String>] Array of participant call control IDs to send DTMF to. When empty, DTMF will be
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. Must be a valid Base-64
        #
        #   @param duration_millis [Integer] Duration of each DTMF digit in milliseconds.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
