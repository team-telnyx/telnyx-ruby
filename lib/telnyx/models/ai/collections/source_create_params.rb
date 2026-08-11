# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#create
        class SourceCreateParams < Telnyx::Models::AI::Collections::SourceRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute uuid
          #
          #   @return [String]
          required :uuid, String

          # @!method initialize(uuid:, request_options: {})
          #   @param uuid [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
