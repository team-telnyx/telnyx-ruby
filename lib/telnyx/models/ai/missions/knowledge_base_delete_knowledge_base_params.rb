# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::KnowledgeBases#delete_knowledge_base
        class KnowledgeBaseDeleteKnowledgeBaseParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute mission_id
          #
          #   @return [String]
          required :mission_id, String

          # @!attribute knowledge_base_id
          #
          #   @return [String]
          required :knowledge_base_id, String

          # @!method initialize(mission_id:, knowledge_base_id:, request_options: {})
          #   @param mission_id [String]
          #   @param knowledge_base_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
