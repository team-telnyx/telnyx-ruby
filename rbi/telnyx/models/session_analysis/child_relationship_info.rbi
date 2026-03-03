# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class ChildRelationshipInfo < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionAnalysis::ChildRelationshipInfo,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :child_event

        sig { returns(String) }
        attr_accessor :child_product

        sig { returns(String) }
        attr_accessor :child_record_type

        sig { returns(T::Boolean) }
        attr_accessor :cost_rollup

        sig { returns(String) }
        attr_accessor :description

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
            child_event: String,
            child_product: String,
            child_record_type: String,
            cost_rollup: T::Boolean,
            description: String,
            relationship_type: String,
            traversal_enabled: T::Boolean,
            via: Telnyx::SessionAnalysis::MetadataFieldMapping::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          child_event:,
          child_product:,
          child_record_type:,
          cost_rollup:,
          description:,
          relationship_type:,
          traversal_enabled:,
          via:
        )
        end

        sig do
          override.returns(
            {
              child_event: String,
              child_product: String,
              child_record_type: String,
              cost_rollup: T::Boolean,
              description: String,
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
