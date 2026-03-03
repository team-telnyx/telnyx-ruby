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
          returns(T::Array[Telnyx::SessionAnalysis::ChildRelationshipInfo])
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
              T::Array[Telnyx::SessionAnalysis::ChildRelationshipInfo::OrHash],
            event: String,
            examples: T::Hash[Symbol, T.anything],
            meta:
              Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta::OrHash,
            parent_relationships:
              T::Array[Telnyx::SessionAnalysis::ParentRelationshipInfo::OrHash],
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
                T::Array[Telnyx::SessionAnalysis::ChildRelationshipInfo],
              event: String,
              examples: T::Hash[Symbol, T.anything],
              meta:
                Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse::Meta,
              parent_relationships:
                T::Array[Telnyx::SessionAnalysis::ParentRelationshipInfo],
              product: String,
              record_type: String
            }
          )
        end
        def to_hash
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
      end
    end
  end
end
