# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tools
          # Test a webhook tool for an assistant
          sig do
            params(
              tool_id: String,
              assistant_id: String,
              arguments: T::Hash[Symbol, T.anything],
              dynamic_variables: T::Hash[Symbol, T.anything],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Assistants::ToolTestResponse)
          end
          def test_(
            # Path param
            tool_id,
            # Path param
            assistant_id:,
            # Body param: Key-value arguments to use for the webhook test
            arguments: nil,
            # Body param: Key-value dynamic variables to use for the webhook test
            dynamic_variables: nil,
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
