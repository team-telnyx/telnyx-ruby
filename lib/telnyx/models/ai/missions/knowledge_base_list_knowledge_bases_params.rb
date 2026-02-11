# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::KnowledgeBases#list_knowledge_bases
        class KnowledgeBaseListKnowledgeBasesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
