# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      class ParentRelationshipInfo < Telnyx::Internal::Type::BaseModel
        # @!attribute cost_rollup
        #
        #   @return [Boolean]
        required :cost_rollup, Telnyx::Internal::Type::Boolean

        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute parent_event
        #
        #   @return [String]
        required :parent_event, String

        # @!attribute parent_product
        #
        #   @return [String]
        required :parent_product, String

        # @!attribute parent_record_type
        #
        #   @return [String]
        required :parent_record_type, String

        # @!attribute relationship_type
        #
        #   @return [String]
        required :relationship_type, String

        # @!attribute traversal_enabled
        #
        #   @return [Boolean]
        required :traversal_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute via
        #
        #   @return [Telnyx::Models::SessionAnalysis::MetadataFieldMapping]
        required :via, -> { Telnyx::SessionAnalysis::MetadataFieldMapping }

        # @!method initialize(cost_rollup:, description:, parent_event:, parent_product:, parent_record_type:, relationship_type:, traversal_enabled:, via:)
        #   @param cost_rollup [Boolean]
        #   @param description [String]
        #   @param parent_event [String]
        #   @param parent_product [String]
        #   @param parent_record_type [String]
        #   @param relationship_type [String]
        #   @param traversal_enabled [Boolean]
        #   @param via [Telnyx::Models::SessionAnalysis::MetadataFieldMapping]
      end
    end
  end
end
