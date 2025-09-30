# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveRequirementsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingOrderRetrieveRequirementsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Type of value expected on field_value field
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::TaggedSymbol
            )
          )
        end
        attr_reader :field_type

        sig do
          params(
            field_type:
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::OrSymbol
          ).void
        end
        attr_writer :field_type

        # Identifies the document that satisfies this requirement
        sig { returns(T.nilable(String)) }
        attr_reader :field_value

        sig { params(field_value: String).void }
        attr_writer :field_value

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Status of the requirement
        sig { returns(T.nilable(String)) }
        attr_reader :requirement_status

        sig { params(requirement_status: String).void }
        attr_writer :requirement_status

        # Identifies the requirement type that meets this requirement
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::RequirementType
            )
          )
        end
        attr_reader :requirement_type

        sig do
          params(
            requirement_type:
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::RequirementType::OrHash
          ).void
        end
        attr_writer :requirement_type

        sig do
          params(
            field_type:
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::OrSymbol,
            field_value: String,
            record_type: String,
            requirement_status: String,
            requirement_type:
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::RequirementType::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of value expected on field_value field
          field_type: nil,
          # Identifies the document that satisfies this requirement
          field_value: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Status of the requirement
          requirement_status: nil,
          # Identifies the requirement type that meets this requirement
          requirement_type: nil
        )
        end

        sig do
          override.returns(
            {
              field_type:
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::TaggedSymbol,
              field_value: String,
              record_type: String,
              requirement_status: String,
              requirement_type:
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::RequirementType
            }
          )
        end
        def to_hash
        end

        # Type of value expected on field_value field
        module FieldType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOCUMENT =
            T.let(
              :document,
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::TaggedSymbol
            )
          TEXTUAL =
            T.let(
              :textual,
              Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class RequirementType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data::RequirementType,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the requirement type
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The acceptance criteria for the requirement type
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :acceptance_criteria

          sig { params(acceptance_criteria: T::Hash[Symbol, T.anything]).void }
          attr_writer :acceptance_criteria

          # A description of the requirement type
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # An example of the requirement type
          sig { returns(T.nilable(String)) }
          attr_reader :example

          sig { params(example: String).void }
          attr_writer :example

          # The name of the requirement type
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The type of the requirement type
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # Identifies the requirement type that meets this requirement
          sig do
            params(
              id: String,
              acceptance_criteria: T::Hash[Symbol, T.anything],
              description: String,
              example: String,
              name: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the requirement type
            id: nil,
            # The acceptance criteria for the requirement type
            acceptance_criteria: nil,
            # A description of the requirement type
            description: nil,
            # An example of the requirement type
            example: nil,
            # The name of the requirement type
            name: nil,
            # The type of the requirement type
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                acceptance_criteria: T::Hash[Symbol, T.anything],
                description: String,
                example: String,
                name: String,
                type: String
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
