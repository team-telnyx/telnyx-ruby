# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class UpdateDynamicVariablesToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #   Description of the tool passed to the assistant, guiding when to call it and
        #   which variables to update.
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #   The function name surfaced to the LLM. Must match the OpenAI function-name
        #   pattern `^[a-zA-Z0-9_-]+$` and be unique across the assistant's function,
        #   webhook, and client_side tools.
        #
        #   @return [String]
        required :name, String

        # @!attribute updatable_variables
        #   The dynamic variables the assistant is allowed to write. At least one is
        #   required.
        #
        #   @return [Array<Telnyx::Models::AI::UpdateDynamicVariablesToolParams::UpdatableVariable>]
        required :updatable_variables,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::UpdateDynamicVariablesToolParams::UpdatableVariable] }

        # @!method initialize(description:, name:, updatable_variables:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::UpdateDynamicVariablesToolParams} for more details.
        #
        #   Configuration for an update_dynamic_variables tool.
        #
        #   @param description [String] Description of the tool passed to the assistant, guiding when to call it and whi
        #
        #   @param name [String] The function name surfaced to the LLM. Must match the OpenAI function-name patte
        #
        #   @param updatable_variables [Array<Telnyx::Models::AI::UpdateDynamicVariablesToolParams::UpdatableVariable>] The dynamic variables the assistant is allowed to write. At least one is require

        class UpdatableVariable < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #   The dynamic-variable key to update. Must match `^[a-zA-Z0-9._-]+$` and may not
          #   start with the reserved `telnyx_` prefix (reserved for system variables). The
          #   `pattern` encodes both rules via a negative lookahead.
          #
          #   @return [String]
          required :name, String

          # @!attribute description
          #   Optional description of the variable, guiding the assistant on what value to
          #   capture.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute type
          #   Optional hint for the variable's value type (e.g. `string`).
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(name:, description: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::UpdateDynamicVariablesToolParams::UpdatableVariable} for
          #   more details.
          #
          #   @param name [String] The dynamic-variable key to update. Must match `^[a-zA-Z0-9._-]+$` and may not s
          #
          #   @param description [String] Optional description of the variable, guiding the assistant on what value to cap
          #
          #   @param type [String] Optional hint for the variable's value type (e.g. `string`).
        end
      end
    end
  end
end
