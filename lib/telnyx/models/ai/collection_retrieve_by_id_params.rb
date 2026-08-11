# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#retrieve_by_id
      class CollectionRetrieveByIDParams < Telnyx::Internal::Type::BaseModel
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
