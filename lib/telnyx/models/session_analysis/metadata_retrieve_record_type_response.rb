# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      # @see Telnyx::Resources::SessionAnalysis::Metadata#retrieve_record_type
      class MetadataRetrieveRecordTypeResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute aliases
        #
        #   @return [Array<String>]
        required :aliases, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute child_relationships
        #
        #   @return [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship>]
        required :child_relationships,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship] }

        # @!attribute event
        #
        #   @return [String]
        required :event, String

        # @!attribute examples
        #   Example queries and responses for this record type.
        #
        #   @return [Hash{Symbol=>Object}]
        required :examples, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute meta
        #
        #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta]
        required :meta, -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta }

        # @!attribute parent_relationships
        #
        #   @return [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship>]
        required :parent_relationships,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship] }

        # @!attribute product
        #
        #   @return [String]
        required :product, String

        # @!attribute record_type
        #
        #   @return [String]
        required :record_type, String

        # @!method initialize(aliases:, child_relationships:, event:, examples:, meta:, parent_relationships:, product:, record_type:)
        #   @param aliases [Array<String>]
        #
        #   @param child_relationships [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship>]
        #
        #   @param event [String]
        #
        #   @param examples [Hash{Symbol=>Object}] Example queries and responses for this record type.
        #
        #   @param meta [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta]
        #
        #   @param parent_relationships [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship>]
        #
        #   @param product [String]
        #
        #   @param record_type [String]

        class ChildRelationship < Telnyx::Internal::Type::BaseModel
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
          #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via]
          required :via,
                   -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via }

          # @!method initialize(child_event:, child_product:, child_record_type:, cost_rollup:, description:, relationship_type:, traversal_enabled:, via:)
          #   @param child_event [String]
          #   @param child_product [String]
          #   @param child_record_type [String]
          #   @param cost_rollup [Boolean]
          #   @param description [String]
          #   @param relationship_type [String]
          #   @param traversal_enabled [Boolean]
          #   @param via [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via]

          # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship#via
          class Via < Telnyx::Internal::Type::BaseModel
            # @!attribute local_field
            #
            #   @return [String]
            required :local_field, String

            # @!attribute parent_field
            #
            #   @return [String]
            required :parent_field, String

            # @!method initialize(local_field:, parent_field:)
            #   @param local_field [String]
            #   @param parent_field [String]
          end
        end

        # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute max_recommended_depth
          #
          #   @return [Integer]
          required :max_recommended_depth, Integer

          # @!attribute total_children
          #
          #   @return [Integer]
          required :total_children, Integer

          # @!attribute total_parents
          #
          #   @return [Integer]
          required :total_parents, Integer

          # @!attribute total_siblings
          #
          #   @return [Integer]
          required :total_siblings, Integer

          # @!method initialize(max_recommended_depth:, total_children:, total_parents:, total_siblings:)
          #   @param max_recommended_depth [Integer]
          #   @param total_children [Integer]
          #   @param total_parents [Integer]
          #   @param total_siblings [Integer]
        end

        class ParentRelationship < Telnyx::Internal::Type::BaseModel
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
          #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via]
          required :via,
                   -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via }

          # @!method initialize(cost_rollup:, description:, parent_event:, parent_product:, parent_record_type:, relationship_type:, traversal_enabled:, via:)
          #   @param cost_rollup [Boolean]
          #   @param description [String]
          #   @param parent_event [String]
          #   @param parent_product [String]
          #   @param parent_record_type [String]
          #   @param relationship_type [String]
          #   @param traversal_enabled [Boolean]
          #   @param via [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via]

          # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship#via
          class Via < Telnyx::Internal::Type::BaseModel
            # @!attribute local_field
            #
            #   @return [String]
            required :local_field, String

            # @!attribute parent_field
            #
            #   @return [String]
            required :parent_field, String

            # @!method initialize(local_field:, parent_field:)
            #   @param local_field [String]
            #   @param parent_field [String]
          end
        end
      end
    end
  end
end
