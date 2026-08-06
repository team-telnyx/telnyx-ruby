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
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::SharedToolResponse)
        end
        def create(
          display_name:,
          type:,
          client_side_tool: nil,
          function: nil,
          handoff: nil,
          invite: nil,
          pay: nil,
          retrieval: nil,
          timeout_ms: nil,
          # Configuration for an update_dynamic_variables tool.
          update_dynamic_variables: nil,
          webhook: nil,
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

        # Delete a custom AI tool.
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
