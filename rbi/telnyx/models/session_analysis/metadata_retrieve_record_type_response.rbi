# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class MetadataRetrieveRecordTypeResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :aliases

        sig do
          returns(
            T::Array[
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship
            ]
          )
        end
        attr_accessor :child_relationships

        sig { returns(String) }
        attr_accessor :event

        # Example queries and responses for this record type.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :examples

        sig do
          returns(
            Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          returns(
            T::Array[
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship
            ]
          )
        end
        attr_accessor :parent_relationships

        sig { returns(String) }
        attr_accessor :product

        sig { returns(String) }
        attr_accessor :record_type

        sig do
          params(
            aliases: T::Array[String],
            child_relationships:
              T::Array[
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::OrHash
              ],
            event: String,
            examples: T::Hash[Symbol, T.anything],
            meta:
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta::OrHash,
            parent_relationships:
              T::Array[
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::OrHash
              ],
            product: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          aliases:,
          child_relationships:,
          event:,
          # Example queries and responses for this record type.
          examples:,
          meta:,
          parent_relationships:,
          product:,
          record_type:
        )
        end

        sig do
          override.returns(
            {
              aliases: T::Array[String],
              child_relationships:
                T::Array[
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship
                ],
              event: String,
              examples: T::Hash[Symbol, T.anything],
              meta:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta,
              parent_relationships:
                T::Array[
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship
                ],
              product: String,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class ChildRelationship < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship,
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

          sig do
            returns(
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via
            )
          end
          attr_reader :via

          sig do
            params(
              via:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via::OrHash
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
              via:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via::OrHash
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
                via:
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via
              }
            )
          end
          def to_hash
          end

          class Via < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ChildRelationship::Via,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :local_field

            sig { returns(String) }
            attr_accessor :parent_field

            sig do
              params(local_field: String, parent_field: String).returns(
                T.attached_class
              )
            end
            def self.new(local_field:, parent_field:)
            end

            sig do
              override.returns({ local_field: String, parent_field: String })
            end
            def to_hash
            end
          end
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :max_recommended_depth

          sig { returns(Integer) }
          attr_accessor :total_children

          sig { returns(Integer) }
          attr_accessor :total_parents

          sig { returns(Integer) }
          attr_accessor :total_siblings

          sig do
            params(
              max_recommended_depth: Integer,
              total_children: Integer,
              total_parents: Integer,
              total_siblings: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            max_recommended_depth:,
            total_children:,
            total_parents:,
            total_siblings:
          )
          end

          sig do
            override.returns(
              {
                max_recommended_depth: Integer,
                total_children: Integer,
                total_parents: Integer,
                total_siblings: Integer
              }
            )
          end
          def to_hash
          end
        end

        class ParentRelationship < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship,
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

          sig do
            returns(
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via
            )
          end
          attr_reader :via

          sig do
            params(
              via:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via::OrHash
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
              via:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via::OrHash
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
                via:
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via
              }
            )
          end
          def to_hash
          end

          class Via < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::ParentRelationship::Via,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :local_field

            sig { returns(String) }
            attr_accessor :parent_field

            sig do
              params(local_field: String, parent_field: String).returns(
                T.attached_class
              )
            end
            def self.new(local_field:, parent_field:)
            end

            sig do
              override.returns({ local_field: String, parent_field: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
