# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Embeddings#list
      class EmbeddingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute status
        #   List of task statuses i.e. `status=queued&status=processing`
        #
        #   @return [Array<String>, nil]
        optional :status, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(status: nil, request_options: {})
        #   @param status [Array<String>] List of task statuses i.e. `status=queued&status=processing`
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
