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
        #   @return [Array<Telnyx::Models::SessionAnalysis::ChildRelationshipInfo>]
        required :child_relationships,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SessionAnalysis::ChildRelationshipInfo] }

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
        #   @return [Array<Telnyx::Models::SessionAnalysis::ParentRelationshipInfo>]
        required :parent_relationships,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SessionAnalysis::ParentRelationshipInfo] }

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
        #   @param child_relationships [Array<Telnyx::Models::SessionAnalysis::ChildRelationshipInfo>]
        #
        #   @param event [String]
        #
        #   @param examples [Hash{Symbol=>Object}] Example queries and responses for this record type.
        #
        #   @param meta [Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta]
        #
        #   @param parent_relationships [Array<Telnyx::Models::SessionAnalysis::ParentRelationshipInfo>]
        #
        #   @param product [String]
        #
        #   @param record_type [String]

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
      end
    end
  end
end
