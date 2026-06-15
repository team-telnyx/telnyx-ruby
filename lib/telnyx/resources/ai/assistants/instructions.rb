# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Instructions
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Assistants::InstructionEnhanceParams} for more details.
          #
          # Enhance an assistant's instructions using an LLM. The endpoint reads the
          # assistant's current instructions and tools, then streams back improved
          # instructions as they are generated.
          #
          # Optionally provide an `enhancement_prompt` to steer the changes (for example,
          # "make the instructions more concise" or "add error handling guidance"). When
          # omitted, the assistant's existing instructions are used as the basis for the
          # enhancement.
          #
          # The enhancement focuses on tool-calling reliability, clarity and precision,
          # completeness and error handling, tool schema alignment, and conversation flow
          # structure.
          #
          # The response is streamed as `text/plain` using chunked transfer encoding;
          # consume the body incrementally to render the enhanced instructions as they
          # arrive.
          #
          # @overload enhance(assistant_id, enhancement_prompt: nil, instructions: nil, request_options: {})
          #
          # @param assistant_id [String] Unique identifier of the assistant.
          #
          # @param enhancement_prompt [String, nil] Optional guidance describing how the instructions should be enhanced. When provi
          #
          # @param instructions [String, nil] The instructions to enhance. When omitted, the assistant's existing instructions
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [String]
          #
          # @see Telnyx::Models::AI::Assistants::InstructionEnhanceParams
          def enhance(assistant_id, params = {})
            parsed, options = Telnyx::AI::Assistants::InstructionEnhanceParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/instructions/enhance", assistant_id],
              headers: {"accept" => "text/plain"},
              body: parsed,
              model: String,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
