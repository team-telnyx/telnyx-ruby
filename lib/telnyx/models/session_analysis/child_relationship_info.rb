# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      class ChildRelationshipInfo < Telnyx::Internal::Type::BaseModel
        # @!attribute child_event
        #
        #   @return [String]
        required :child_event, String

        # @!attribute child_product
        #
        #   @return [String]
        required :child_product, String

        # @!attribute child_record_type
        #
        #   @return [String]
        required :child_record_type, String

        # @!attribute cost_rollup
        #
        #   @return [Boolean]
        required :cost_rollup, Telnyx::Internal::Type::Boolean

        # @!attribute description
        #
        #   @return [String]
        required :description, String

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

        # @!method initialize(child_event:, child_product:, child_record_type:, cost_rollup:, description:, relationship_type:, traversal_enabled:, via:)
        #   @param child_event [String]
        #   @param child_product [String]
        #   @param child_record_type [String]
        #   @param cost_rollup [Boolean]
        #   @param description [String]
        #   @param relationship_type [String]
        #   @param traversal_enabled [Boolean]
        #   @param via [Telnyx::Models::SessionAnalysis::MetadataFieldMapping]
      end
    end
  end
end
