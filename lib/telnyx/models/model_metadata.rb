# frozen_string_literal: true

module Telnyx
  module Models
    class ModelMetadata < Telnyx::Internal::Type::BaseModel
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
