# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class KnowledgeBases
          # Create a new knowledge base for a mission
          #
          # @overload create_knowledge_base(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::KnowledgeBaseCreateKnowledgeBaseParams
          def create_knowledge_base(mission_id, params = {})
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/knowledge-bases", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Detaches the specified knowledge base from the mission so its content is no
          # longer available to agents in subsequent runs.
          #
          # @overload delete_knowledge_base(knowledge_base_id, mission_id:, request_options: {})
          #
          # @param knowledge_base_id [String] Unique identifier of the knowledge base.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Missions::KnowledgeBaseDeleteKnowledgeBaseParams
          def delete_knowledge_base(knowledge_base_id, params)
            parsed, options = Telnyx::AI::Missions::KnowledgeBaseDeleteKnowledgeBaseParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/missions/%1$s/knowledge-bases/%2$s", mission_id, knowledge_base_id],
              model: NilClass,
              options: options
            )
          end

          # Returns the details of a single knowledge base attached to the specified
          # mission.
          #
          # @overload get_knowledge_base(knowledge_base_id, mission_id:, request_options: {})
          #
          # @param knowledge_base_id [String] Unique identifier of the knowledge base.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::KnowledgeBaseGetKnowledgeBaseParams
          def get_knowledge_base(knowledge_base_id, params)
            parsed, options = Telnyx::AI::Missions::KnowledgeBaseGetKnowledgeBaseParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/knowledge-bases/%2$s", mission_id, knowledge_base_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
            )
          end

          # Returns the knowledge bases attached to the specified mission. Knowledge bases
          # provide reference content agents can draw on during runs.
          #
          # @overload list_knowledge_bases(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::KnowledgeBaseListKnowledgeBasesParams
          def list_knowledge_bases(mission_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/knowledge-bases", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Replaces the definition of the specified knowledge base on this mission.
          #
          # @overload update_knowledge_base(knowledge_base_id, mission_id:, request_options: {})
          #
          # @param knowledge_base_id [String] Unique identifier of the knowledge base.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::KnowledgeBaseUpdateKnowledgeBaseParams
          def update_knowledge_base(knowledge_base_id, params)
            parsed, options = Telnyx::AI::Missions::KnowledgeBaseUpdateKnowledgeBaseParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["ai/missions/%1$s/knowledge-bases/%2$s", mission_id, knowledge_base_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
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
