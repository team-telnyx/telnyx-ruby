# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        # Whether a write has finished.
        class Namespaces
          sig { returns(Telnyx::Resources::AI::Memory::Namespaces::Profiles) }
          attr_reader :profiles

          # How a namespace's summaries are written.
          sig { returns(Telnyx::Resources::AI::Memory::Namespaces::Settings) }
          attr_reader :settings

          # Whether a write has finished. Both `ingest` and `remember` return an
          # `operation_id`, and a memory is not recallable until its operation completes —
          # extraction, embedding and consolidation all run first.
          sig do
            params(
              operation_id: String,
              namespace: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Memory::NamespaceRetrieveResponse)
          end
          def retrieve(operation_id, namespace:, request_options: {})
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
