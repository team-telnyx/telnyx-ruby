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
          def create_knowledge_base(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Detaches the specified knowledge base from the mission so its content is no
          # longer available to agents in subsequent runs.
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_knowledge_base(
            # Unique identifier of the knowledge base.
            knowledge_base_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the details of a single knowledge base attached to the specified
          # mission.
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_knowledge_base(
            # Unique identifier of the knowledge base.
            knowledge_base_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the knowledge bases attached to the specified mission. Knowledge bases
          # provide reference content agents can draw on during runs.
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_knowledge_bases(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Replaces the definition of the specified knowledge base on this mission.
          sig do
            params(
              knowledge_base_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_knowledge_base(
            # Unique identifier of the knowledge base.
            knowledge_base_id,
            # Unique identifier of the mission.
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
