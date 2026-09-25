# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        # Whether a write has finished.
        class Namespaces
          # @return [Telnyx::Resources::AI::Memory::Namespaces::Profiles]
          attr_reader :profiles

          # How a namespace's summaries are written.
          # @return [Telnyx::Resources::AI::Memory::Namespaces::Settings]
          attr_reader :settings

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
