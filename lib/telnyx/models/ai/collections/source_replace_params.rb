# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#replace
        class SourceReplaceParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute uuid
          #
          #   @return [String]
          required :uuid, String

          # @!attribute sources
          #
          #   @return [Array<Telnyx::Models::AI::Collections::SourceRequest>]
          required :sources, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::SourceRequest] }

          # @!method initialize(uuid:, sources:, request_options: {})
          #   @param uuid [String]
          #   @param sources [Array<Telnyx::Models::AI::Collections::SourceRequest>]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
