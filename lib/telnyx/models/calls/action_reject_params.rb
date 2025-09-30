# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#reject
      class ActionRejectParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute cause
        #   Cause for call rejection.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionRejectParams::Cause]
        required :cause, enum: -> { Telnyx::Calls::ActionRejectParams::Cause }

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

        # @!method initialize(cause:, client_state: nil, command_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionRejectParams} for more details.
        #
        #   @param cause [Symbol, Telnyx::Models::Calls::ActionRejectParams::Cause] Cause for call rejection.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Cause for call rejection.
        module Cause
          extend Telnyx::Internal::Type::Enum

          CALL_REJECTED = :CALL_REJECTED
          USER_BUSY = :USER_BUSY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
