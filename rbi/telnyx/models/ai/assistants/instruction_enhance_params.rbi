# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class InstructionEnhanceParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::InstructionEnhanceParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          # Optional guidance describing how the instructions should be enhanced. When
          # provided, the LLM applies these requested changes in addition to fixing any
          # identified issues.
          sig { returns(T.nilable(String)) }
          attr_accessor :enhancement_prompt

          # The instructions to enhance. When omitted, the assistant's existing instructions
          # are used.
          sig { returns(T.nilable(String)) }
          attr_accessor :instructions

          sig do
            params(
              assistant_id: String,
              enhancement_prompt: T.nilable(String),
              instructions: T.nilable(String),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            assistant_id:,
            # Optional guidance describing how the instructions should be enhanced. When
            # provided, the LLM applies these requested changes in addition to fixing any
            # identified issues.
            enhancement_prompt: nil,
            # The instructions to enhance. When omitted, the assistant's existing instructions
            # are used.
            instructions: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                enhancement_prompt: T.nilable(String),
                instructions: T.nilable(String),
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
end
