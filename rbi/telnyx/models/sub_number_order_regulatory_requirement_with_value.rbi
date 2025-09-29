# typed: strong

module Telnyx
  module Models
    class SubNumberOrderRegulatoryRequirementWithValue < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue,
            Telnyx::Internal::AnyHash
          )
        end

      # The value of the requirement, this could be an id to a resource or a string
      # value.
      sig { returns(T.nilable(String)) }
      attr_reader :field_value

      sig { params(field_value: String).void }
      attr_writer :field_value

      # Unique id for a requirement.
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_id

      sig { params(requirement_id: String).void }
      attr_writer :requirement_id

      sig do
        returns(
          T.nilable(
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
          )
        )
      end
      attr_reader :field_type

      sig do
        params(
          field_type:
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::OrSymbol
        ).void
      end
      attr_writer :field_type

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          field_type:
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::OrSymbol,
          field_value: String,
          record_type: String,
          requirement_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        field_type: nil,
        # The value of the requirement, this could be an id to a resource or a string
        # value.
        field_value: nil,
        record_type: nil,
        # Unique id for a requirement.
        requirement_id: nil
      )
      end

      sig do
        override.returns(
          {
            field_type:
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol,
            field_value: String,
            record_type: String,
            requirement_id: String
          }
        )
      end
      def to_hash
      end

      module FieldType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEXTUAL =
          T.let(
            :textual,
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
          )
        DATETIME =
          T.let(
            :datetime,
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
          )
        ADDRESS =
          T.let(
            :address,
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
          )
        DOCUMENT =
          T.let(
            :document,
            Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::FieldType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
