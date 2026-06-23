# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#retrieve_models
    class ModelsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ModelMetadata>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ModelMetadata] }

      # @!attribute object
      #
      #   @return [String, nil]
      optional :object, String

      # @!method initialize(data:, object: nil)
      #   @param data [Array<Telnyx::Models::ModelMetadata>]
      #   @param object [String]
    end
  end
end
