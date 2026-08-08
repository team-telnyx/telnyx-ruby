# typed: strong

module Telnyx
  module Models
    module AI
      class UpdateDynamicVariablesToolParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::UpdateDynamicVariablesToolParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Description of the tool passed to the assistant, guiding when to call it and
        # which variables to update.
        sig { returns(String) }
        attr_accessor :description

        # The function name surfaced to the LLM. Must match the OpenAI function-name
        # pattern `^[a-zA-Z0-9_-]+$` and be unique across the assistant's function,
        # webhook, and client_side tools.
        sig { returns(String) }
        attr_accessor :name

        # The dynamic variables the assistant is allowed to write. At least one is
        # required.
        sig do
          returns(
            T::Array[
              Telnyx::AI::UpdateDynamicVariablesToolParams::UpdatableVariable
            ]
          )
        end
        attr_accessor :updatable_variables

        # Configuration for an update_dynamic_variables tool.
        sig do
          params(
            description: String,
            name: String,
            updatable_variables:
              T::Array[
                Telnyx::AI::UpdateDynamicVariablesToolParams::UpdatableVariable::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of the tool passed to the assistant, guiding when to call it and
          # which variables to update.
          description:,
          # The function name surfaced to the LLM. Must match the OpenAI function-name
          # pattern `^[a-zA-Z0-9_-]+$` and be unique across the assistant's function,
          # webhook, and client_side tools.
          name:,
          # The dynamic variables the assistant is allowed to write. At least one is
          # required.
          updatable_variables:
        )
        end

        sig do
          override.returns(
            {
              description: String,
              name: String,
              updatable_variables:
                T::Array[
                  Telnyx::AI::UpdateDynamicVariablesToolParams::UpdatableVariable
                ]
            }
          )
        end
        def to_hash
        end

        class UpdatableVariable < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::UpdateDynamicVariablesToolParams::UpdatableVariable,
                Telnyx::Internal::AnyHash
              )
            end

          # The dynamic-variable key to update. Must match `^[a-zA-Z0-9._-]+$` and may not
          # start with the reserved `telnyx_` prefix (reserved for system variables). The
          # `pattern` encodes both rules via a negative lookahead.
          sig { returns(String) }
          attr_accessor :name

          # Optional description of the variable, guiding the assistant on what value to
          # capture.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Optional hint for the variable's value type (e.g. `string`).
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(name: String, description: String, type: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The dynamic-variable key to update. Must match `^[a-zA-Z0-9._-]+$` and may not
            # start with the reserved `telnyx_` prefix (reserved for system variables). The
            # `pattern` encodes both rules via a negative lookahead.
            name:,
            # Optional description of the variable, guiding the assistant on what value to
            # capture.
            description: nil,
            # Optional hint for the variable's value type (e.g. `string`).
            type: nil
          )
          end

          sig do
            override.returns(
              { name: String, description: String, type: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
