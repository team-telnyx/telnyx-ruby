# typed: strong

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      class Tools
        # Create Tool
        sig do
          params(
            display_name: String,
            type: String,
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            webhook: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ToolCreateResponse)
        end
        def create(
          display_name:,
          type:,
          function: nil,
          handoff: nil,
          invite: nil,
          retrieval: nil,
          timeout_ms: nil,
          webhook: nil,
          request_options: {}
        )
        end

        # Get Tool
        sig do
          params(
            tool_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ToolRetrieveResponse)
        end
        def retrieve(
          # Unique identifier of the tool.
          tool_id,
          request_options: {}
        )
        end

        # Update Tool
        sig do
          params(
            tool_id: String,
            display_name: String,
            function: T::Hash[Symbol, T.anything],
            handoff: T::Hash[Symbol, T.anything],
            invite: T::Hash[Symbol, T.anything],
            retrieval: T::Hash[Symbol, T.anything],
            timeout_ms: Integer,
            type: String,
            webhook: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ToolUpdateResponse)
        end
        def update(
          # Unique identifier of the tool.
          tool_id,
          display_name: nil,
          function: nil,
          handoff: nil,
          invite: nil,
          retrieval: nil,
          timeout_ms: nil,
          type: nil,
          webhook: nil,
          request_options: {}
        )
        end

        # List Tools
        sig do
          params(
            filter_name: String,
            filter_type: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::AI::ToolListResponse
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

        # Delete Tool
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
