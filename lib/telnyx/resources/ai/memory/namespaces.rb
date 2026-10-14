# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          # @return [Telnyx::Resources::AI::Memory::Namespaces::Profiles]
          attr_reader :profiles

          # How a namespace's summaries are written.
          # @return [Telnyx::Resources::AI::Memory::Namespaces::Settings]
          attr_reader :settings

          # Create a namespace. An organization can have at most five, `default` among them
          # — a sixth returns `403`.
          #
          # @overload create(name:, request_options: {})
          #
          # @param name [String] A name for the new namespace, unique within your organization.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Memory::NamespaceCreateResponse]
          #
          # @see Telnyx::Models::AI::Memory::NamespaceCreateParams
          def create(params)
            parsed, options = Telnyx::AI::Memory::NamespaceCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/memory/namespaces",
              body: parsed,
              model: Telnyx::Models::AI::Memory::NamespaceCreateResponse,
              options: options
            )
          end

          # Whether a write has finished. Both `ingest` and `remember` return an
          # `operation_id`, and a memory is not recallable until its operation completes —
          # extraction, embedding and consolidation all run first.
          #
          # @overload retrieve(operation_id, namespace:, request_options: {})
          #
          # @param operation_id [String]
          # @param namespace [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Memory::NamespaceRetrieveResponse]
          #
          # @see Telnyx::Models::AI::Memory::NamespaceRetrieveParams
          def retrieve(operation_id, params)
            parsed, options = Telnyx::AI::Memory::NamespaceRetrieveParams.dump_request(params)
            namespace =
              parsed.delete(:namespace) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/memory/namespaces/%1$s/operations/%2$s", namespace, operation_id],
              model: Telnyx::Models::AI::Memory::NamespaceRetrieveResponse,
              options: options
            )
          end

          # Every namespace in your organization, `default` among them.
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Memory::NamespaceListResponse]
          #
          # @see Telnyx::Models::AI::Memory::NamespaceListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ai/memory/namespaces",
              model: Telnyx::Models::AI::Memory::NamespaceListResponse,
              options: params[:request_options]
            )
          end

          # Delete a namespace and every profile and memory in it. `default` cannot be
          # deleted. This cannot be undone.
          #
          # @overload delete(namespace, request_options: {})
          #
          # @param namespace [String] The namespace to delete. `default` cannot be deleted.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Memory::NamespaceDeleteParams
          def delete(namespace, params = {})
            @client.request(
              method: :delete,
              path: ["ai/memory/namespaces/%1$s", namespace],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @profiles = Telnyx::Resources::AI::Memory::Namespaces::Profiles.new(client: client)
            @settings = Telnyx::Resources::AI::Memory::Namespaces::Settings.new(client: client)
          end
        end
      end
    end
  end
end
