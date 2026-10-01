# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          sig { returns(Telnyx::Resources::AI::Memory::Namespaces::Profiles) }
          attr_reader :profiles

          # How a namespace's summaries are written.
          sig { returns(Telnyx::Resources::AI::Memory::Namespaces::Settings) }
          attr_reader :settings

          # Create a namespace. An organization can have at most five, `default` among them
          # — a sixth returns `403`.
          sig do
            params(
              name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Memory::NamespaceCreateResponse)
          end
          def create(
            # A name for the new namespace, unique within your organization.
            name:,
            request_options: {}
          )
          end

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

          # Every namespace in your organization, `default` among them.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::Models::AI::Memory::NamespaceListResponse
            )
          end
          def list(request_options: {})
          end

          # Delete a namespace and every profile and memory in it. `default` cannot be
          # deleted. This cannot be undone.
          sig do
            params(
              namespace: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The namespace to delete. `default` cannot be deleted.
            namespace,
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
