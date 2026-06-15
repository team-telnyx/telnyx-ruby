# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Instructions#enhance
        class InstructionEnhanceParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute enhancement_prompt
          #   Optional guidance describing how the instructions should be enhanced. When
          #   provided, the LLM applies these requested changes in addition to fixing any
          #   identified issues.
          #
          #   @return [String, nil]
          optional :enhancement_prompt, String, nil?: true

          # @!attribute instructions
          #   The instructions to enhance. When omitted, the assistant's existing instructions
          #   are used.
          #
          #   @return [String, nil]
          optional :instructions, String, nil?: true

          # @!method initialize(assistant_id:, enhancement_prompt: nil, instructions: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::InstructionEnhanceParams} for more details.
          #
          #   @param assistant_id [String]
          #
          #   @param enhancement_prompt [String, nil] Optional guidance describing how the instructions should be enhanced. When provi
          #
          #   @param instructions [String, nil] The instructions to enhance. When omitted, the assistant's existing instructions
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
