# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#delete
        class SourceDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute uuid
          #
          #   @return [String]
          required :uuid, String

          # @!attribute source_id
          #
          #   @return [String]
          required :source_id, String

          # @!method initialize(uuid:, source_id:, request_options: {})
          #   @param uuid [String]
          #   @param source_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
