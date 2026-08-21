# typed: strong

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      class Tools
        # Create a new custom AI tool that can be attached to AI assistants.
        sig do
          params(
            display_name: String,
            type: String,
            client_side_tool: T::Hash[Symbol, T.anything],
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            pay: Telnyx::AI::PayToolParams::OrHash,
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            update_dynamic_variables:
              Telnyx::AI::UpdateDynamicVariablesToolParams::OrHash,
            webhook: T::Hash[Symbol, T.anything],
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::SharedToolResponse)
        end
        def create(
          # Body param
          display_name:,
          # Body param
          type:,
          # Body param
          client_side_tool: nil,
          # Body param
          function: nil,
          # Body param
          handoff: nil,
          # Body param
          invite: nil,
          # Body param
          pay: nil,
          # Body param
          retrieval: nil,
          # Body param
          timeout_ms: nil,
          # Body param: Configuration for an update_dynamic_variables tool.
          update_dynamic_variables: nil,
          # Body param
          webhook: nil,
          # Header param: Optional opaque, unquoted key for safely retrying the same logical
          # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
          # Generate a unique UUID v4 for each operation and reuse it only when retrying
          # that operation with the same request. Invalid headers—including duplicate,
          # empty, malformed, or overlong values—return 400 with error code 10015. A request
          # already in progress with the same key returns 409; reusing the key with a
          # different request returns 422. Only successful responses are replayed, for up to
          # 24 hours. Do not include sensitive data in the key.
          idempotency_key: nil,
          request_options: {}
        )
        end

        # Retrieve the details of a specific AI tool.
        sig do
          params(
            tool_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::SharedToolResponse)
        end
        def retrieve(
          # Unique identifier of the tool.
          tool_id,
          request_options: {}
        )
        end

        # Update the configuration of an existing AI tool.
        sig do
          params(
            tool_id: String,
            client_side_tool: T::Hash[Symbol, T.anything],
            display_name: String,
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            pay: Telnyx::AI::PayToolParams::OrHash,
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            type: String,
            update_dynamic_variables:
              Telnyx::AI::UpdateDynamicVariablesToolParams::OrHash,
            webhook: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::SharedToolResponse)
        end
        def update(
          # Unique identifier of the tool.
          tool_id,
          client_side_tool: nil,
          display_name: nil,
          function: nil,
          handoff: nil,
          invite: nil,
          pay: nil,
          retrieval: nil,
          timeout_ms: nil,
          type: nil,
          # Configuration for an update_dynamic_variables tool.
          update_dynamic_variables: nil,
          webhook: nil,
          request_options: {}
        )
        end

        # Retrieve a list of the custom AI tools configured on your account.
        sig do
          params(
            filter_name: String,
            filter_type: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::AI::SharedToolResponse
            ]
          )
        end
        def list(
          # Filter results by filter name.
          filter_name: nil,
          # Filter results by filter type.
          filter_type: nil,
          # Page number to retrieve (1-based).
          page_number: nil,
          # Number of items to return per page.
          page_size: nil,
          request_options: {}
        )
        end

        # Permanently deletes the specified custom AI tool from your account.
        sig do
          params(
            tool_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(
          # Unique identifier of the tool.
          tool_id,
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
