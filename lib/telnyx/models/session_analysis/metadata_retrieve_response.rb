# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      # @see Telnyx::Resources::SessionAnalysis::Metadata#retrieve
      class MetadataRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute meta
        #
        #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta]
        required :meta, -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta }

        # @!attribute query_parameters
        #   Map of supported query parameter names to their definitions.
        #
        #   @return [Hash{Symbol=>Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter}]
        required :query_parameters,
                 -> { Telnyx::Internal::Type::HashOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter] }

        # @!attribute record_types
        #
        #   @return [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType>]
        required :record_types,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType] }

        # @!method initialize(meta:, query_parameters:, record_types:)
        #   @param meta [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta]
        #
        #   @param query_parameters [Hash{Symbol=>Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter}] Map of supported query parameter names to their definitions.
        #
        #   @param record_types [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType>]

        # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute last_updated
          #
          #   @return [Time]
          required :last_updated, Time

          # @!attribute total_record_types
          #
          #   @return [Integer]
          required :total_record_types, Integer

          # @!method initialize(last_updated:, total_record_types:)
          #   @param last_updated [Time]
          #   @param total_record_types [Integer]
        end

        class QueryParameter < Telnyx::Internal::Type::BaseModel
          # @!attribute default
          #
          #   @return [String]
          required :default, String

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute type
          #
          #   @return [String]
          required :type, String

          # @!attribute enum_values
          #
          #   @return [Array<String>, nil]
          optional :enum_values, Telnyx::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute max
          #
          #   @return [Integer, nil]
          optional :max, Integer, nil?: true

          # @!attribute min
          #
          #   @return [Integer, nil]
          optional :min, Integer, nil?: true

          # @!method initialize(default:, description:, type:, enum_values: nil, max: nil, min: nil)
          #   @param default [String]
          #   @param description [String]
          #   @param type [String]
          #   @param enum_values [Array<String>, nil]
          #   @param max [Integer, nil]
          #   @param min [Integer, nil]
        end

        class RecordType < Telnyx::Internal::Type::BaseModel
          # @!attribute aliases
          #
          #   @return [Array<String>]
          required :aliases, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute child_relationships
          #
          #   @return [Array<Telnyx::Models::SessionAnalysis::ChildRelationshipInfo>]
          required :child_relationships,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SessionAnalysis::ChildRelationshipInfo] }

          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute event
          #
          #   @return [String]
          required :event, String

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

          # @!method initialize(aliases:, child_relationships:, description:, event:, parent_relationships:, product:, record_type:)
          #   @param aliases [Array<String>]
          #   @param child_relationships [Array<Telnyx::Models::SessionAnalysis::ChildRelationshipInfo>]
          #   @param description [String]
          #   @param event [String]
          #   @param parent_relationships [Array<Telnyx::Models::SessionAnalysis::ParentRelationshipInfo>]
          #   @param product [String]
          #   @param record_type [String]
        end
      end
    end
  end
end
