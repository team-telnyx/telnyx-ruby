# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Tools
          # Add Assistant Tool
          #
          # @overload add(tool_id, assistant_id:, request_options: {})
          #
          # @param tool_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Assistants::ToolAddParams
          def add(tool_id, params)
            parsed, options = Telnyx::AI::Assistants::ToolAddParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["ai/assistants/%1$s/tools/%2$s", assistant_id, tool_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
            )
          end

          # Remove Assistant Tool
          #
          # @overload remove(tool_id, assistant_id:, request_options: {})
          #
          # @param tool_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Assistants::ToolRemoveParams
          def remove(tool_id, params)
            parsed, options = Telnyx::AI::Assistants::ToolRemoveParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/assistants/%1$s/tools/%2$s", assistant_id, tool_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
            )
          end

          # Test a webhook tool for an assistant
          #
          # @overload test_(tool_id, assistant_id:, arguments: nil, dynamic_variables: nil, request_options: {})
          #
          # @param tool_id [String] Path param
          #
          # @param assistant_id [String] Path param
          #
          # @param arguments [Hash{Symbol=>Object}] Body param: Key-value arguments to use for the webhook test
          #
          # @param dynamic_variables [Hash{Symbol=>Object}] Body param: Key-value dynamic variables to use for the webhook test
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::ToolTestResponse]
          #
          # @see Telnyx::Models::AI::Assistants::ToolTestParams
          def test_(tool_id, params)
            parsed, options = Telnyx::AI::Assistants::ToolTestParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/tools/%2$s/test", assistant_id, tool_id],
              body: parsed,
              model: Telnyx::Models::AI::Assistants::ToolTestResponse,
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
