# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Deleted
          # List the organization's soft-deleted assistants in the Recently Deleted list.
          #
          # Each entry includes `deleted_at` and `permanently_deleted_at`, the point after
          # which the assistant is erased automatically and can no longer be restored.
          #
          # @overload list(page_number: nil, page_size: nil, request_options: {})
          #
          # @param page_number [Integer] Page number to retrieve (1-based).
          #
          # @param page_size [Integer] Number of items to return per page.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Assistants::DeletedAssistant>]
          #
          # @see Telnyx::Models::AI::Assistants::DeletedListParams
          def list(params = {})
            parsed, options = Telnyx::AI::Assistants::DeletedListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "ai/assistants/deleted",
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::AI::Assistants::DeletedAssistant,
              options: options
            )
          end

          # Retrieve a soft-deleted assistant from the Recently Deleted list by
          # `assistant_id`, including its `deleted_at` and `permanently_deleted_at`
          # timestamps. This is a read-only view; the assistant cannot be modified while it
          # remains deleted.
          #
          # @overload get(assistant_id, request_options: {})
          #
          # @param assistant_id [String] Unique identifier of the assistant.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::DeletedAssistant]
          #
          # @see Telnyx::Models::AI::Assistants::DeletedGetParams
          def get(assistant_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/deleted", assistant_id],
              model: Telnyx::AI::Assistants::DeletedAssistant,
              options: params[:request_options]
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
