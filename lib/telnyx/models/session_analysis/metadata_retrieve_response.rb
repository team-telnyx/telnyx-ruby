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
          #   @return [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship>]
          required :child_relationships,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship] }

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
          #   @return [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship>]
          required :parent_relationships,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship] }

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
          #   @param child_relationships [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship>]
          #   @param description [String]
          #   @param event [String]
          #   @param parent_relationships [Array<Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship>]
          #   @param product [String]
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
            #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via]
            required :via,
                     -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via }

            # @!method initialize(child_event:, child_product:, child_record_type:, cost_rollup:, description:, relationship_type:, traversal_enabled:, via:)
            #   @param child_event [String]
            #   @param child_product [String]
            #   @param child_record_type [String]
            #   @param cost_rollup [Boolean]
            #   @param description [String]
            #   @param relationship_type [String]
            #   @param traversal_enabled [Boolean]
            #   @param via [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via]

            # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship#via
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
            #   @return [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via]
            required :via,
                     -> { Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via }

            # @!method initialize(cost_rollup:, description:, parent_event:, parent_product:, parent_record_type:, relationship_type:, traversal_enabled:, via:)
            #   @param cost_rollup [Boolean]
            #   @param description [String]
            #   @param parent_event [String]
            #   @param parent_product [String]
            #   @param parent_record_type [String]
            #   @param relationship_type [String]
            #   @param traversal_enabled [Boolean]
            #   @param via [Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via]

            # @see Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship#via
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
end
