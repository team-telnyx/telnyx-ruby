# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#update
      class CollectionUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute uuid
        #
        #   @return [String]
        required :uuid, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(uuid:, description: nil, name: nil, request_options: {})
        #   @param uuid [String]
        #   @param description [String]
        #   @param name [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
