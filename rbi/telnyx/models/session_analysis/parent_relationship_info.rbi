# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class ParentRelationshipInfo < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionAnalysis::ParentRelationshipInfo,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :cost_rollup

        sig { returns(String) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :parent_event

        sig { returns(String) }
        attr_accessor :parent_product

        sig { returns(String) }
        attr_accessor :parent_record_type

        sig { returns(String) }
        attr_accessor :relationship_type

        sig { returns(T::Boolean) }
        attr_accessor :traversal_enabled

        sig { returns(Telnyx::SessionAnalysis::MetadataFieldMapping) }
        attr_reader :via

        sig do
          params(
            via: Telnyx::SessionAnalysis::MetadataFieldMapping::OrHash
          ).void
        end
        attr_writer :via

        sig do
          params(
            cost_rollup: T::Boolean,
            description: String,
            parent_event: String,
            parent_product: String,
            parent_record_type: String,
            relationship_type: String,
            traversal_enabled: T::Boolean,
            via: Telnyx::SessionAnalysis::MetadataFieldMapping::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          cost_rollup:,
          description:,
          parent_event:,
          parent_product:,
          parent_record_type:,
          relationship_type:,
          traversal_enabled:,
          via:
        )
        end

        sig do
          override.returns(
            {
              cost_rollup: T::Boolean,
              description: String,
              parent_event: String,
              parent_product: String,
              parent_record_type: String,
              relationship_type: String,
              traversal_enabled: T::Boolean,
              via: Telnyx::SessionAnalysis::MetadataFieldMapping
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
