# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#stop_forking
      class ActionStopForkingParams < Telnyx::Internal::Type::BaseModel
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

        # @!attribute stream_type
        #   Optionally specify a `stream_type`. This should match the `stream_type` that was
        #   used in `fork_start` command to properly stop the fork.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStopForkingParams::StreamType, nil]
        optional :stream_type, enum: -> { Telnyx::Calls::ActionStopForkingParams::StreamType }

        # @!method initialize(client_state: nil, command_id: nil, stream_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStopForkingParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param stream_type [Symbol, Telnyx::Models::Calls::ActionStopForkingParams::StreamType] Optionally specify a `stream_type`. This should match the `stream_type` that was
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Optionally specify a `stream_type`. This should match the `stream_type` that was
        # used in `fork_start` command to properly stop the fork.
        module StreamType
          extend Telnyx::Internal::Type::Enum

          RAW = :raw
          DECRYPTED = :decrypted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
