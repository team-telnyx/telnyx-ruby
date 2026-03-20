# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Tags
          # Get All Tags
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::TagListResponse]
          #
          # @see Telnyx::Models::AI::Assistants::TagListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ai/assistants/tags",
              model: Telnyx::Models::AI::Assistants::TagListResponse,
              options: params[:request_options]
            )
          end

          # Add Assistant Tag
          #
          # @overload add(assistant_id, tag:, request_options: {})
          #
          # @param assistant_id [String]
          # @param tag [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::TagAddResponse]
          #
          # @see Telnyx::Models::AI::Assistants::TagAddParams
          def add(assistant_id, params)
            parsed, options = Telnyx::AI::Assistants::TagAddParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/tags", assistant_id],
              body: parsed,
              model: Telnyx::Models::AI::Assistants::TagAddResponse,
              options: options
            )
          end

          # Remove Assistant Tag
          #
          # @overload remove(tag, assistant_id:, request_options: {})
          #
          # @param tag [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::TagRemoveResponse]
          #
          # @see Telnyx::Models::AI::Assistants::TagRemoveParams
          def remove(tag, params)
            parsed, options = Telnyx::AI::Assistants::TagRemoveParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/assistants/%1$s/tags/%2$s", assistant_id, tag],
              model: Telnyx::Models::AI::Assistants::TagRemoveResponse,
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
