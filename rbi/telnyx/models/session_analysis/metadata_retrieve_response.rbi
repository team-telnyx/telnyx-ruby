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
            returns(T::Array[Telnyx::SessionAnalysis::ChildRelationshipInfo])
          end
          attr_accessor :child_relationships

          sig { returns(String) }
          attr_accessor :description

          sig { returns(String) }
          attr_accessor :event

          sig do
            returns(T::Array[Telnyx::SessionAnalysis::ParentRelationshipInfo])
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
                  Telnyx::SessionAnalysis::ChildRelationshipInfo::OrHash
                ],
              description: String,
              event: String,
              parent_relationships:
                T::Array[
                  Telnyx::SessionAnalysis::ParentRelationshipInfo::OrHash
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
                  T::Array[Telnyx::SessionAnalysis::ChildRelationshipInfo],
                description: String,
                event: String,
                parent_relationships:
                  T::Array[Telnyx::SessionAnalysis::ParentRelationshipInfo],
                product: String,
                record_type: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
