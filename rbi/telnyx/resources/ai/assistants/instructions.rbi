# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Instructions
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
          sig do
            params(
              assistant_id: String,
              enhancement_prompt: T.nilable(String),
              instructions: T.nilable(String),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(String)
          end
          def enhance(
            # Unique identifier of the assistant.
            assistant_id,
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

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
