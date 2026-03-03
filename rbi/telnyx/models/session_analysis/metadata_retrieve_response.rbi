# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class MetadataRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        # Map of supported query parameter names to their definitions.
        sig do
          returns(
            T::Hash[
              Symbol,
              Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter
            ]
          )
        end
        attr_accessor :query_parameters

        sig do
          returns(
            T::Array[
              Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType
            ]
          )
        end
        attr_accessor :record_types

        sig do
          params(
            meta:
              Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta::OrHash,
            query_parameters:
              T::Hash[
                Symbol,
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter::OrHash
              ],
            record_types:
              T::Array[
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          meta:,
          # Map of supported query parameter names to their definitions.
          query_parameters:,
          record_types:
        )
        end

        sig do
          override.returns(
            {
              meta:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta,
              query_parameters:
                T::Hash[
                  Symbol,
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter
                ],
              record_types:
                T::Array[
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType
                ]
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :last_updated

          sig { returns(Integer) }
          attr_accessor :total_record_types

          sig do
            params(last_updated: Time, total_record_types: Integer).returns(
              T.attached_class
            )
          end
          def self.new(last_updated:, total_record_types:)
          end

          sig do
            override.returns(
              { last_updated: Time, total_record_types: Integer }
            )
          end
          def to_hash
          end
        end

        class QueryParameter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::QueryParameter,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :default

          sig { returns(String) }
          attr_accessor :description

          sig { returns(String) }
          attr_accessor :type

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :enum_values

          sig { returns(T.nilable(Integer)) }
          attr_accessor :max

          sig { returns(T.nilable(Integer)) }
          attr_accessor :min

          sig do
            params(
              default: String,
              description: String,
              type: String,
              enum_values: T.nilable(T::Array[String]),
              max: T.nilable(Integer),
              min: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            default:,
            description:,
            type:,
            enum_values: nil,
            max: nil,
            min: nil
          )
          end

          sig do
            override.returns(
              {
                default: String,
                description: String,
                type: String,
                enum_values: T.nilable(T::Array[String]),
                max: T.nilable(Integer),
                min: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class RecordType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :aliases

          sig do
            returns(
              T::Array[
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship
              ]
            )
          end
          attr_accessor :child_relationships

          sig { returns(String) }
          attr_accessor :description

          sig { returns(String) }
          attr_accessor :event

          sig do
            returns(
              T::Array[
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship
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
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::OrHash
                ],
              description: String,
              event: String,
              parent_relationships:
                T::Array[
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::OrHash
                ],
              product: String,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            aliases:,
            child_relationships:,
            description:,
            event:,
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
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship
                  ],
                description: String,
                event: String,
                parent_relationships:
                  T::Array[
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship
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
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship,
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
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via
              )
            end
            attr_reader :via

            sig do
              params(
                via:
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via::OrHash
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
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via::OrHash
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
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via
                }
              )
            end
            def to_hash
            end

            class Via < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ChildRelationship::Via,
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

          class ParentRelationship < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship,
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
                Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via
              )
            end
            attr_reader :via

            sig do
              params(
                via:
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via::OrHash
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
                  Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via::OrHash
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
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via
                }
              )
            end
            def to_hash
            end

            class Via < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse::RecordType::ParentRelationship::Via,
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
end
