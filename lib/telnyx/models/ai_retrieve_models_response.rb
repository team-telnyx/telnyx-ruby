# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#retrieve_models
    class AIRetrieveModelsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AIRetrieveModelsResponse::Data>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AIRetrieveModelsResponse::Data] }

      # @!attribute object
      #
      #   @return [String, nil]
      optional :object, String

      # @!method initialize(data:, object: nil)
      #   @param data [Array<Telnyx::Models::AIRetrieveModelsResponse::Data>]
      #   @param object [String]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created
        #
        #   @return [Integer]
        required :created, Integer

        # @!attribute owned_by
        #
        #   @return [String]
        required :owned_by, String

        # @!attribute object
        #
        #   @return [String, nil]
        optional :object, String

        # @!method initialize(id:, created:, owned_by:, object: nil)
        #   @param id [String]
        #   @param created [Integer]
        #   @param owned_by [String]
        #   @param object [String]
      end
    end
  end
end
