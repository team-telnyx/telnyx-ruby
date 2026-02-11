# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class KnowledgeBases
          # Create a new knowledge base for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_knowledge_base(mission_id, request_options: {})
          end

          # Delete a knowledge base from a mission
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_knowledge_base(
            knowledge_base_id,
            mission_id:,
            request_options: {}
          )
          end

          # Get a specific knowledge base by ID
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_knowledge_base(
            knowledge_base_id,
            mission_id:,
            request_options: {}
          )
          end

          # List all knowledge bases for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_knowledge_bases(mission_id, request_options: {})
          end

          # Update a knowledge base definition
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_knowledge_base(
            knowledge_base_id,
            mission_id:,
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
