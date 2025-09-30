# typed: strong

module Telnyx
  module Models
    class PortingOrderRequirement < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderRequirement, Telnyx::Internal::AnyHash)
        end

      # Type of value expected on field_value field
      sig do
        returns(
          T.nilable(Telnyx::PortingOrderRequirement::FieldType::TaggedSymbol)
        )
      end
      attr_reader :field_type

      sig do
        params(
          field_type: Telnyx::PortingOrderRequirement::FieldType::OrSymbol
        ).void
      end
      attr_writer :field_type

      # identifies the document that satisfies this requirement
      sig { returns(T.nilable(String)) }
      attr_reader :field_value

      sig { params(field_value: String).void }
      attr_writer :field_value

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Identifies the requirement type that meets this requirement
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_type_id

      sig { params(requirement_type_id: String).void }
      attr_writer :requirement_type_id

      sig do
        params(
          field_type: Telnyx::PortingOrderRequirement::FieldType::OrSymbol,
          field_value: String,
          record_type: String,
          requirement_type_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of value expected on field_value field
        field_type: nil,
        # identifies the document that satisfies this requirement
        field_value: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Identifies the requirement type that meets this requirement
        requirement_type_id: nil
      )
      end

      sig do
        override.returns(
          {
            field_type:
              Telnyx::PortingOrderRequirement::FieldType::TaggedSymbol,
            field_value: String,
            record_type: String,
            requirement_type_id: String
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
            T.all(Symbol, Telnyx::PortingOrderRequirement::FieldType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DOCUMENT =
          T.let(
            :document,
            Telnyx::PortingOrderRequirement::FieldType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrderRequirement::FieldType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
